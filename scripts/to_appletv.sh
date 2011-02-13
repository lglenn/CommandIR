#!/bin/bash

# to-appletv.sh  - Commands to switch from PC input to AppleTV

IR_CODES_DIR=/home/larry/ir_codes
HDMI_SWITCH_EMITTER=1
MYTH_PORT=3
APPLETV_PORT=2

commandir_send -e$HDMI_SWITCH_EMITTER $IR_CODES_DIR/hdmi_$APPLETV_PORT
irexec /home/larry/.lirc/appletv