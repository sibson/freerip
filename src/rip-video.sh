
rip-title() {
    local title="$1"
    shift 1
    local dest="$*"

    local target="${dest}_${title}.mp4"
    echo "** Ripping $title to $target ..."

    HandBrakeCLI --title $title --input $DEVICE --output "$target" --preset "High Profile" --optimize
}

rip-video() {
    local dest="$1"

    # + title 2:
    echo "** Finding titles to rip ..."
    local titles=$(HandBrakeCLI --input $DEVICE --output /dev/stdout --title 0 --min-duration 300 2>&1 | grep '+ title' | cut -w -f 3 | cut -d : -f 1 | tr '\n' ' ')
    echo "** Found: $titles"
    for title in $titles; do
        rip-title $title $dest
    done
}
