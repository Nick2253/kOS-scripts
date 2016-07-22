///////////////////////////////////
// kUBL - kOS Universal Boot Loader
//
// Version 0.1 - 2015-01-16
// This file is distributed under the terms of the MIT license, (c) Nick2253
//
// Tested with kOS v0.18.3
//
///////////////////////////////////
// README
// 
// kUBL is the kOS Universal Boot Loader.  It is a "low-level" initialization
// script that initializes the active craft, loads and processes "mission"
// scripts for active craft, and loads the correct guidance computer system.
// As such, kUBL is typically only run on the "master" processor for a craft.
// As part of its initialization, kUBL will prepare any "secondary" processors 
// for their roles/functions.
//
// More specifically, on boot, kUBL performs the following
// tasks:
//    - Perform error checking to make sure another guidance computer is not
//      already running on the active craft.
//    - Initialize global variables.
//    - Perform a health-check of the craft to make sure nothing is wrong or
//      missing.
//    - Connects to archive, and loads mission script.
//    - Based on the mission script, downloads the correct guidance computer
//      system and supporting libraries.
//    - Identifies the "client" processor, preps it, and loads the client
//      scripts on it.
//    - Identifies the "secondary" processor(s), and loads the correct scripts
//      based on their function (like stage retrieval, etc.)
//
///////////////////////////////////
// VERSION HISTORY
// 0.1 - 2015-01-16
//  -First version of the script
///////////////////////////////////


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
