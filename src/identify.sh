

identify() {
    CDEV=$1
    TITLE=$(echo $CDEV | sed 's|iso9660/||')
}
