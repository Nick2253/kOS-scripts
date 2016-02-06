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
// and set it to the correct size.
CLEARSCREEN.
SET TERMINAL:WIDTH 80.
SET TERMINAL:HEIGHT 24.

//Now we run basic diagnostics of our vessel
SET name TO VESSEL:NAME.
SET status to VESSEL:STATUS.

//If vessel is PRELAUNCH, we need to load the vessel's programming on to its CPU.

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
PRINT "".
PRINT "       _   _      _                      _   ___           _   ".
PRINT "      | | | |_ _ (_)_ _____ _ _ ___ __ _| | | _ ) ___  ___| |_".
PRINT "      | |_| | ' \| \ V / -_) '_(_-</ _` | | | _ \/ _ \/ _ \  _|".
PRINT "       \___/|_||_|_|\_/\___|_| /__/\__,_|_| |___/\___/\___/\__|".
