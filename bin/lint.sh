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
    lint_json_all "$mode"
    lint_mcfunction_all "$mode"
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

main "$@"
