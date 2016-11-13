eject() {
    DEVICE=$1
    cdcontrol -f $DEVICE eject
}
