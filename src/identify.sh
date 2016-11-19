

identify() {
    CDEV=$1
    DISCNAME=$(echo $CDEV | sed 's|iso9660/||')
}
