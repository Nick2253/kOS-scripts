// Data Logger //
//
// The data logger records data from ships and writes to a file.
//
// By default, the logger outputs to logfile.ks, but this may
// be configurable in future version.  Initially, the parameters
// that it outputs are set, but again that might change in the
// future.
//
// Output: CSV
// Columns: 
//    Time (s)
//    Height (m)
//    Mass (Mg)
//    Thrust X (kN)
//    Thrust Y (kN)
//    Velocity X (m/s)
//    Velocity Y (m/s)
//    Angle (degrees)
//    
//

LOG "TIME,HEIGHT,MAS,THRUSTX,THRUSTY,VELX,VELY,ANGLE" TO logfile.

UNTIL false {
  WAIT 1.
  SET
  SET
  SET
  SET
  SET
  SET
  SET
  SET
  SET
  LOG time + "," + height + "," + mass + "," + thrustx + "," + thrusty + "," + angle to logfile.
}.
