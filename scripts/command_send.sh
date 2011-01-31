#!/bin/bash
# command_send.sh  for CommandIR

irsend send_once commandir settransmitters-$1
irsend send_once $2 $3
