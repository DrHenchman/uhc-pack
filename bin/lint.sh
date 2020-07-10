#!/bin/bash -e

function main() {
    local mode="validate"
    while [ $# -ne 0 ]; do
        case "$1" in
            --fix)
                mode="fix"
                ;;
            *)
                raise_error "Unexpected argument $1"
                ;;
        esac
        shift
    done
    if [ "$mode" == "fix" ]; then
        raise_error "--fix has not been implemented yet"
    fi
    lint_json_all
    lint_mcfunction_all
    lint_tags_all
    echo "PASSED!"
}

function raise_error() {
    local msg="$1"
    echo "ERROR: $msg"
    exit 1
}

function lint_json_all() {
    local file_count=0
    local error_count=0
    echo "[JSON] Linting"
    for json_file in `find data -name '*.json'`; do
        echo "[JSON] $json_file"
        set +e
        jq --indent 2 . "$json_file" | diff - "$json_file"
        error_count=$((error_count + $?))
        set -e
        file_count=$((file_count + 1))
    done
    echo "[JSON] Linted files: $file_count, errors: $error_count"
    if [ $error_count -gt 0 ]; then
        exit 1
    fi
}

function lint_mcfunction_all() {
    local file_count=0
    local error_count=0
    echo "[MCFUNCTION] Linting..."
    for mcfunction_file in `find data -name '*.mcfunction'`; do
        echo "[MCFUNCTION] $mcfunction_file"
        local header="$(mcfunction_header "$mcfunction_file")"
        if [ -z "$header" ]; then
            echo "[MCFUNCTION] Header missing"
            error_count=$((error_count + 1))
        fi
        local check_entity=1
        local check_location=1
        while IFS= read -r header_line; do
            case "$header_line" in
                "# Entity:"*)
                    check_entity=0
                    ;;
                "# Location:"*)
                    check_location=0
                    ;;
            esac
        done < <(echo "$header")
        if [ $check_entity -eq 1 ]; then
            set +e
            egrep ' @s' "$mcfunction_file" | egrep -v ' as @[^s].* @s' | egrep -v '^#'
            if [ $? -eq 0 ]; then
                echo "[MCFUNCTION] @s selector used but function does not declare that it requires a context entity"
                error_count=$((error_count + 1))
            fi
            set -e
        fi
        if [ $check_location -eq 1 ]; then
            set +e
            egrep ' ~' "$mcfunction_file" | egrep -v ' at @.* ~' | egrep -v ' positioned [^~].* ~' | egrep -v '^#'
            if [ $? -eq 0 ]; then
                echo "[MCFUNCTION] Relative positioning used but function does not declare that it requires a location"
                error_count=$((error_count + 1))
            fi
            set -e
        fi
        file_count=$((file_count + 1))
    done
    echo "[MCFUNCTION] Linted files: $file_count, errors: $error_count"
    if [ $error_count -gt 0 ]; then
        exit 1
    fi
}

function mcfunction_header() {
    local file_name="$1"
    while IFS= read -r line; do
        case "$line" in
            "#"*):
                echo "$line"
                ;;
            *):
                break
                ;;
        esac
    done < "$file_name"
}

function mcfunction_id_to_file() {
    local mcfunction_id="$1"

    local file_ext="mcfunction"
    local file_dir="functions"

    case "$mcfunction_id" in
        "#"*):
            file_ext="json"
            file_dir="tags/functions"
            ;;
    esac
    mcfunction_id="${mcfunction_id#"#"}"

    local namespace="$(echo "$mcfunction_id" | cut -d':' -f1)"
    local name="${mcfunction_id#"$namespace:"}"
    echo "data/$namespace/$file_dir/$name.$file_ext"
}

function file_to_mcfunction_id() {
    local file_path="$1"
    file_path="${file_path#"data/"}"
    
    local namespace="$(echo "$file_path" | cut -d'/' -f1)"
    local file_path="${file_path#"$namespace/"}"
    local prefix=""
    local file_ext="mcfunction"
    case "$file_path" in
        "tags/"*):
            file_path="${file_path#"tags/"}"
            prefix="#"
            file_ext="json"
            ;;
    esac
    file_path="${file_path%".$file_ext"}"
    local name="${file_path#"functions/"}"
    echo "$prefix$namespace:$name"
}

function lint_tags_all() {
    local file_count=0
    local error_count=0
    echo "[TAG] Linting..."
    for tag_file in `find data -name '*.json' | grep '/tags/functions/'`; do
        echo "[TAG] $tag_file"
        local tag_id="$(file_to_mcfunction_id "$tag_file")"
        for mcfunction_id in `jq --raw-output '.values[]' "$tag_file"`; do
            local mcfunction_file="$(mcfunction_id_to_file "$mcfunction_id")"
            local header="$(mcfunction_header "$mcfunction_file" | fgrep "# Tag: $tag_id")"
            if [ -z "$header" ]; then
                echo "[TAG] $mcfunction_id is referenced from $tag_id but does not declare that it is registered with the tag"
                error_count=$((error_count + 1))
            fi
        done
        file_count=$((file_count + 1))
    done
    echo "[TAG] Linted files: $file_count, errors: $error_count"
    if [ $error_count -gt 0 ]; then
        exit 1
    fi
}

main "$@"
