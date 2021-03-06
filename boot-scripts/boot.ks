///////////////////////////////////////////////////////////////////////////////
// kUBL - kOS Universal Boot Loader
//
// Version 0.1 - 2015-01-16
// This file is distributed under the terms of the MIT license, (c) Nick2253
//
// Tested with kOS v0.18.3
//
///////////////////////////////////////////////////////////////////////////////
// README
// 
// kUBL is the kOS Universal Boot Loader.  It is a "low-level" initialization
// script that initializes the active craft, loads and processes "mission"
// scripts for active craft, and loads the correct guidance computer system.
// As such, kUBL is typically only run on the "master" processor for a craft.
// As part of its initialization, kUBL will prepare any "secondary" processors 
// for their roles/functions.
//
// At the moment, kUBL struggles with payload processors.  It is unable to dis-
// tinguish between a stage recovery processor and a payload processor.  As
// long as a stage separates the processor from the master processor, it won't
// be confused for a client processor.  
//
// The easiest solution to to manually override kUBL after initialization, but
// before launch.  However, if the mission file is created properly then kUBL 
// will download the necessary supporting libraries, so the change could be
// made at any time.
// 
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
///////////////////////////////////////////////////////////////////////////////
// VERSION HISTORY
// 0.1 - 2015-01-16
//  -First version of the script
///////////////////////////////////////////////////////////////////////////////


//First, we'll clear the terminal screen to make it look nice
// and set it to the correct size.
CLEARSCREEN.
SET TERMINAL:WIDTH 80.
SET TERMINAL:HEIGHT 24.

//Now we can print our splash screen.
PRINT "                                                         '".
PRINT "             .                       .--.        *               +         *".
PRINT "    *                      *        / /  `               +   /\".
PRINT "                  `                | |      +              .'  '.   *".
PRINT "                                    \ \__,         *      /======\      +".
PRINT "              +                      '--'                ;:.  _   ;".
PRINT "                           .                             |:. (_)  |".
PRINT "                                      *                  |:.  _   |".
PRINT "                                               +         |:. (_)  |          *".
PRINT " dP       dP     dP  888888ba  dP                        ;:.      ;".
PRINT " 88       88     88  88    `8b 88          '           .' \:.    / `.".
PRINT " 88  .dP  88     88 a88aaaa8P' 88                     / .-'':._.'`-. \".
PRINT " 88888"   88     88  88   `8b. 88                     |/    /||\    \|".
PRINT " 88  `8b. Y8.   .8P  88    .88 88                  _...--"""````"""--..._".
PRINT " dP   `YP `Y88888P'  88888888P 88888888P     _.-'``                      ``'-._".
PRINT "".
PRINT "       kOS Universal Boot Loader".
PRINT "".
PRINT "".

//Begin initialization
PRINT "Please be patient while system initializes...".


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

https://www.reddit.com/r/Kos/comments/3zrq4o/starting_a_program_on_another_cpu/
