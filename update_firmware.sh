#!/bin/sh -x

sudo fwupdmgr refresh
sudo fwupdmgr get-updates
sudo fwupdmgr get-devices
sudo fwupdmgr update
