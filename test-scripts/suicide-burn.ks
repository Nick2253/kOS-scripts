//Ideas for how the script works:
// - Determine time to impact.
//   - Use numerical integration to step through 
// - Determine maximum negative acceleration (thrust minus gravity).
// - When (current velocity) = (max accel) * ( (time to impact) - (current time) ), then:
//   - Begin deceleration
//   - Use PID controller to adjust thrust
// - When almost to touchdown, kill horizontal velocity.
//
// body:geopositionof(positionat(time:seconds + someTime)):terrainheight
// Calculate terrain height at sometime in the future of your orbit.