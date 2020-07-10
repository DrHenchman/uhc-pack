#!/bin/bash -e

function main() {
    local overwrite=0
    local destination=""
    while [ $# -ne 0 ]; do
        case "$1" in
            --overwrite)
                overwrite=1
                ;;
            *)
                destination="$1"
                ;;
        esac
        shift
    done
    if [ -z "$destination" ]; then
        raise_error "No destination specified"
    fi
    if [ -d "$destination" ]; then
        destination="$(dirname "$destination")/$(basename "$destination")/uhc-pack.zip"
    fi
    if [ "${destination##*.}" != "zip" ]; then
        raise_error "$(display_path "$destination") is not a zip"
    fi
    if [ -f "$destination" ]; then
        if [ $overwrite -eq 1 ]; then
            echo "Deleting $(display_path "$destination")"
            trash "$destination"
        else
            raise_error "$(display_path "$destination") already exists"
        fi
    fi
    generate_book
    zip -r "$destination" LICENSE data pack.mcmeta
    echo "Generated: $(display_path "$destination")"
}

function raise_error() {
    local msg="$1"
    echo "ERROR: $msg"
    exit 1
}

function display_path() {
    local path="$1"
    if [ "$path" != "${path#"$HOME"}" ]; then
        path="~/${path#"$HOME/"}"
    fi
    echo "$path"
}

function generate_book() {
    local json_text=""
    local json_sep=""
    for json_file in $(ls book | grep '\.json$' | sort); do
        json_text="$json_text$json_sep$(jq --ascii-output --compact-output . "book/$json_file" | jq --raw-input .)"
        json_sep=","
    done
    local output_file="data/uhc_pack/functions/lobby/reset_book.mcfunction"
    echo -n '' > "$output_file"

    echo '#' >> "$output_file"
    echo '# Replace the current players first hotbar slot with the configuration book' >> "$output_file"
    echo '# GENERATED FILE' >> "$output_file"
    echo '#' >> "$output_file"
    echo '# Entity: the player' >> "$output_file"
    echo '#' >> "$output_file"
    echo '' >> "$output_file"
    echo -n 'replaceitem entity @s hotbar.0 minecraft:written_book{title:"UHC Pack",author:"DrHenchman",display:{Lore:["by DrHenchman"]},HideFlags:32,pages:[' >> "$output_file"
    echo -n "$json_text" >> "$output_file"
    echo -n ']}' >> "$output_file"
    echo '' >> "$output_file"
    echo '' >> "$output_file"
    echo 'scoreboard players reset @s uhcOpt' >> "$output_file"
    echo 'scoreboard players enable @s uhcOpt' >> "$output_file"
}

main "$@"
