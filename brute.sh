#!/bin/bash
function TryPassword
{
    echo -n "$1 "
    r=$(echo -n "$1" | hdiutil verify -stdinpass "$2" 2>&1)
    if ! [[ $r =~ "verify failed" ]]; then
        echo ""
        echo "Found! The password is: $1"
    exit
    fi
}

chars=$(echo {0..9} {A..z})
alphanum=( $(echo $chars | sed -E 's/[^A-Za-z0-9 ]+/ /g') )
letter=( $(echo $chars | sed -E 's/[^A-Za-z ]+/ /g') )
lowercase=( $(echo $chars | sed -E 's/[^a-z ]+/ /g') )
uppercase=( $(echo $chars | sed -E 's/[^A-Z ]+/ /g') )
digit=( $(echo $chars | sed -E 's/[^0-9 ]+/ /g') )

for a in "${digit[@]}"; do
    for c in "${digit[@]}"; do
	for b in "${digit[@]}"; do
            TryPassword "mac-torrent-download.net_${a}${c}${b}" "$1"
	done
    done
done
