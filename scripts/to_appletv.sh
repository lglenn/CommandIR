#!/bin/bash

# to-appletv.sh  - Commands to switch from PC input to AppleTV

irsend send_once commandir settransmitters-1
irsend send_once monoprice_hdmi_switch BTN_2
