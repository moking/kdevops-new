#!/bin/bash

DISTRO=$1
VIRT_TYPE=$2

# We currently ignore the distro because as far as we're concerned
# they all use the default IP, the only thing that differiantes it
# is if you are using vagrant or guestfs. If your distribution needs
# a different deafult it should be easy for you to extend it here.

DISTRO_FEDORA=`scripts/os-release-check.sh fedora`
if [[ "$DISTRO_FEDORA" == "y" ]]; then
	echo "192.168.122.1"
	exit 0
fi

if [[ "$VIRT_TYPE" == "vagrant" ]]; then
	echo "192.168.124.1"
else
	echo "192.168.122.1"
fi
