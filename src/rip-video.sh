
rip-video() {
    OUTPUT="$1"
    HandBrakeCLI --main-feature -i $DEVICE -o "$OUTPUT" -e x265 -q 23 --encoder-preset slow -E av_aac --custom-anamorphic --keep-display-aspect -O -Neng -s1 --decomb
}
