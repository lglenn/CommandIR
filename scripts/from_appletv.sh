#!/bin/bash

# from-appletv.sh  - Commands to switch from AppleTV to PC input.

# Hitting 'Menu' will stop any playing that is happening on the AppleTV. 
# This is where a 'stop' button would be nice...
irsend send_once commandir settransmitters-3
irsend send_once Apple_A1294 MENU

# Switch input back to MythTV
irsend send_once commandir settransmitters-1
irsend send_once monoprice_hdmi_switch BTN_3

