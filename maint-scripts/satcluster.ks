///////////////////////////////////////////////////////////////////////////////
// SatCluster - Satellite Cluter Maintainer
//
// Version 0.1 - 2016-07-25
//
// This file is distributed under the terms of the MIT license, (c) Nick2253
//
// Tested with kOS v0.18.3
//
///////////////////////////////////////////////////////////////////////////////
// README
// 
// SatCluster is a satellite cluster maintainer script.  SatCluster's primary
// purpose is to automate station keeping for satellites.  SatCluster doesn't
// perform any of the actual maintenance work, instead relying on the
// satelites' guidance computer to do the actual work.
// 
//
// More specifically SatCluster performs the following tasks:
//    - Opens that sat cluster list.
//    - Checks the clusters against their ideal data.
//    - Sends a message to the satellites to initiate station keeping, and
//      changes the active ship to the satellite to allow it to work.
//    - Automatically stops if it detects that an alarm is near.
//
///////////////////////////////////////////////////////////////////////////////
// VERSION HISTORY
// 0.1 - 2016-07-25
//  -First version of the script
///////////////////////////////////////////////////////////////////////////////

https://github.com/KSP-KOS/KOS/issues/1476
