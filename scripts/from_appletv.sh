#!/bin/bash

# from-appletv.sh  - Commands to switch from AppleTV to PC input.

IR_CODES_DIR=/home/larry/ir_codes
HDMI_SWITCH_EMITTER=1
APPLETV_EMITTER=3
MYTH_PORT=3
APPLETV_PORT=2

# Hitting 'Menu' will stop any playing that is happening on the AppleTV. 
# This is where a 'stop' button would be nice...
commandir_send -e$APPLETV_EMITTER $IR_CODES_DIR/appletv_menu

# Switch input back to MythTV
commandir_send -e$HDMI_SWITCH_EMITTER $IR_CODES_DIR/hdmi_$MYTH_PORT

killall irexec
