#!/bin/bash -e

readonly TARGET_DIR="target"

function main() {
    local clean_target_dir=0
    local version="release"
    while [ $# -ne 0 ]; do
        case "$1" in
            --version)
                version="$2"
                shift
                ;;
            --clean)
                clean_target_dir=1
                ;;
            *)
                raise_error "Unexpected argument $1"
                ;;
        esac
        shift
    done

    ensure_repository_root
    if [ $clean_target_dir -eq 1 ]; then
        clean_target_dir
    fi

    ensure_target_dir
    generate_datapack
    download_manifest

    echo "Resolving version $version"
    version="$(resolve_version "$version")"
    echo "Resolved version $version"
    download_version "$version"

    accept_eula "$version"
    copy_datapack "$version"
    start_server "$version"
    wait_and_stop_server "$version"

    assert_no_error_logs "$version"
    echo "PASSED!"
}

function raise_error() {
    local msg="$1"
    echo "ERROR: $msg"
    exit 1
}

function ensure_repository_root() {
    if [ ! -d ".git" ]; then
        raise_error "bin/ci.sh must be executed from the root of the repository"
    fi
}

function clean_target_dir() {
    if [ -d "$TARGET_DIR" ]; then
        rm -v -r "$TARGET_DIR"
    fi
}

function ensure_target_dir() {
    mkdir -p "$TARGET_DIR"
}

function generate_datapack() {
    echo "Generating datapack"
    if [ -f "$TARGET_DIR/uhc-pack.zip" ]; then
        rm "$TARGET_DIR/uhc-pack.zip"
    fi
    bin/generate.sh "$TARGET_DIR/uhc-pack.zip"
}

function download_manifest() {
    if [ -f "$TARGET_DIR/version_manifest.json" ]; then
        echo "Already downloaded version_manifest.json"
    else
        echo "Downloading version_manifest.json"
        curl https://launchermeta.mojang.com/mc/game/version_manifest.json > "$TARGET_DIR/version_manifest.json"
    fi
}

function resolve_version() {
    local version="$1"
    case "$version" in
        release)
            version="$(jq .latest.release --raw-output "$TARGET_DIR/version_manifest.json")"
            ;;
        snapshot)
            version="$(jq .latest.snapshot --raw-output "$TARGET_DIR/version_manifest.json")"
            ;;
        *)
            ;;
    esac
    echo "$version"
}

function download_version() {
    local version="$1"
    if [ ! -d "$TARGET_DIR/$version" ]; then
        mkdir "$TARGET_DIR/$version"
    fi

    if [ -f "$TARGET_DIR/$version/$version.json" ]; then
        echo "Already downloaded $version.json"
    else
        echo "Looking up $version.json URL"
        local version_url="$(jq ".versions[] | select(.id == \"$version\").url" --raw-output "$TARGET_DIR/version_manifest.json")"
        if [ -z "$version_url" ]; then
            raise_eror "Unknown version: $version"
        fi
        echo "Downloading $version.json"
        curl "$version_url" > "$TARGET_DIR/$version/$version.json"
    fi

    local version_jar_url="$(jq .downloads.server.url --raw-output "$TARGET_DIR/$version/$version.json")"
    local version_jar_sha1="$(jq .downloads.server.sha1 --raw-output "$TARGET_DIR/$version/$version.json")"
    if [ -f "$TARGET_DIR/$version/$version.jar" ]; then
        echo "Already downloaded $version.jar"
    else
        echo "Downloading $version.jar"
        curl "$version_jar_url" > "$TARGET_DIR/$version/$version.jar"
    fi
    echo "Running checksum on $version.jar"
    echo "$version_jar_sha1  $TARGET_DIR/$version/$version.jar" | shasum -a 1 -c
}

function accept_eula() {
    local version="$1"
    echo "Accepting EULA for version $version"
    echo "eula=true" > "$TARGET_DIR/$version/eula.txt"
    touch "$TARGET_DIR/$version/server.properties"
}

function copy_datapack() {
    local version="$1"
    echo "Copying datapack into world"
    mkdir -p "$TARGET_DIR/$version/world/datapacks"
    cp -v "$TARGET_DIR/uhc-pack.zip" "$TARGET_DIR/$version/world/datapacks/uhc-pack.zip"
}

function start_server() {
    local version="$1"
    echo "Starting Minecraft version $version"
    cd "$TARGET_DIR/$version"
    java -jar "$version.jar" nogui &
    echo $! > server.pid
    cd "../../"
    echo "PID = $(cat "$TARGET_DIR/$version/server.pid")"
}

function wait_and_stop_server() {
    local version="$1"
    local server_pid="$(cat "$TARGET_DIR/$version/server.pid")"
    local retries=0
    echo "Waiting for server to load datapack"
    sleep 5
    until grep -q 'Loaded [0-9]\+ advancements' "$TARGET_DIR/$version/logs/latest.log" || ! ps "$server_pid" || [ $retries -ge 60 ]; do
        echo "Waiting for server to load datapack"
        sleep 1
        retries=$((retries + 1))
    done
    if ps "$server_pid"; then
        echo "Killing PID = $server_pid"
        kill -9 "$server_pid"
    fi
    if ! grep -q 'Loaded [0-9]\+ advancements' "$TARGET_DIR/$version/logs/latest.log"; then
        raise_error "Minecraft server failed to start"
    fi
    if ! fgrep -q 'uhc-pack.zip' "$TARGET_DIR/$version/logs/latest.log"; then
        raise_error "uhc-pack.zip was not loaded as a datapack"
    fi
}

function assert_no_error_logs() {
    local version="$1"
    echo "Analyzing Minecraft version $version logs"
    # fgrep exits with a non-zero code if there is no output, so we need to ignore errors
    set +e
    cat "$TARGET_DIR/$version/logs/latest.log" | fgrep -v '/WARN]' | fgrep -v '/INFO]' > "$TARGET_DIR/results.log"
    set -e
    echo "Error logs START"
    cat "$TARGET_DIR/results.log"
    echo "Error logs END"
    if [ -s "$TARGET_DIR/results.log" ]; then
        raise_error "Error logs found"
    fi
}

main "$@"
