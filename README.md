freerip allows you to quickly rip your own DVDs and CDs for personal use.  Simply, insert a disc into the drive and it will be ejected once complete.

# Installation

    1. Install devd config and launcher on host, not in the jail

    sudo cp freerip.conf /etc/devd/
    sudo cp freerip-launcher /usr/local/bin/

    1. Restart devd to pickup new config

    sudo /etc/rc.d/devd restart

    1. Create a new jail called ```freerip```

    1. Configure storage to be mounted at ```/mnt/freerip```.  All rips will be saved here.

    1. Install freerip.sh into the jail

    sudo cp freerip.sh /mnt/jails/freerip/usr/local/bin

    1. Install HandbrakeCLI into the jail as per Ryan Baumann's excellent [guide](https://ryanfb.github.io/etc/2016/04/21/installing_handbrake_on_freenas.html)

# Usage

    1. Insert a CD or DVD into the drive
    1. Wait
    1. The CD/DVD will be ejected once all the content has been ripped


# Debugging

    1. disable devd

        sudo /etc/rc.d/devd stop

    1. Run devd in debug mode

        sudo devd -D -d

    1. Insert a new CD or DVD
