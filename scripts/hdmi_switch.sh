#!/bin/bash

case "$1" in
    myth)
	command="BTN_3";
	;;
    appletv)
	command="BTN_2";
	;;
esac

command_send.sh 1 monoprice_hdmi_switch $command;