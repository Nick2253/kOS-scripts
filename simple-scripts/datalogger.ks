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

LOG "TIME,HEIGHT,MASS,THRUST,VELX,VELY,ANGLE" TO logfile.

LOCAL starttime TO TIME:SECONDS. 
LOCAL time TO 0.
LOCAL height TO 0.
LOCAL mass TO 0.
LOCAL thrustx TO 0.
LOCAL thrusty TO 0.
LOCAL velx TO 0.
LOCAL vely TO 0.
LOCAL angle TO 0.

UNTIL false {
  WAIT 1.
  SET time TO TIME:SECONDS-starttime.
  SET height TO ALTITUDE.
  SET mass TO MASS.
  SET thrust TO
  SET velx TO GROUNDSPEED.
  SET vely TO VERTICALSPEED.
  SET angle TO 
  SET
  LOG time + "," + height + "," + mass + "," + thrust + "," + velx + "," + vely + "," + angle to logfile.
  WAIT 1.
}.
