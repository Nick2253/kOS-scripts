////////////////////
// UNIVERSAL BOOT
//
// Initializes the spacecraft, downloads the correct mission script, and runs it.
//
// Tested with kOS v0.18.3

////////////////////
// This file is distributed under the terms of the MIT license, (c) Nick2253

////////////////////
// VERSION HISTORY
// 0.1 - 2015-01-16
//  -First version of the script



//First, we'll clear the terminal screen to make it look nice
CLEARSCREEN.

//This is our countdown loop, which cycles from 10 to 0
PRINT "Counting down:".
FROM {local countdown is 10.} UNTIL countdown = 0 STEP {SET countdown to countdown - 1.} DO {
    PRINT "..." + countdown.
    WAIT 1. // pauses the script here for 1 second.
}

PRINT "__/\\\________/\\\______/\\\\\\\\\\\_____/\\\\\\\\\\\\\___".
PRINT " _\/\\\_____/\\\//_____/\\\/////////\\\__\/\\\/////////\\\_".
PRINT "  _\/\\\__/\\\//_______\//\\\______\///___\/\\\_______\/\\\_".
PRINT "   _\/\\\\\\//\\\________\////\\\__________\/\\\\\\\\\\\\\/__".
PRINT "    _\/\\\//_\//\\\__________\////\\\_______\/\\\/////////____".
PRINT "     _\/\\\____\//\\\____________\////\\\____\/\\\_____________".
PRINT "      _\/\\\_____\//\\\____/\\\______\//\\\___\/\\\_____________".
PRINT "       _\/\\\______\//\\\__\///\\\\\\\\\\\/____\/\\\_____________".
PRINT "        _\///________\///_____\///////////______\///______________".
