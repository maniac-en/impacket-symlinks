#!/bin/bash
# generate symlinks for impacket examples
set -e
if [[ $UID != 0 ]]; then
    echo "Please run this script with sudo!"
    cat <<EOF
Usage: sudo ./link.sh /path/to/your/impacket/examples/dir
EOF
    exit 1
else
    for file in "$1"/*; do
        # Get the script name
        name_script=$(basename "$file")
        # Remove the extension
        example_name="${name_script%.*}"
        # create symlinks
        ln -sf /usr/share/impacket/script /usr/bin/impacket-"${example_name}"
    done
fi
