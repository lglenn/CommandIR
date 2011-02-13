#!/bin/bash

SLEEP=$1;

pushbutton() {
    irsend send_once commandir settransmitters-3
    irsend send_once Apple_A1294 $1;
    sleep $SLEEP;
}

while true
do
    pushbutton "LEFT";
    pushbutton "LEFT";
    pushbutton "LEFT";
    pushbutton "RIGHT";
    pushbutton "RIGHT";
    pushbutton "RIGHT";
    pushbutton "RIGHT";
    pushbutton "UP";
    pushbutton "DOWN";
    pushbutton "OK";
    pushbutton "MENU";
done

    
