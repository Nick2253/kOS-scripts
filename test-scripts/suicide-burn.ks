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

ts = stop time
ti = impact time
dt = ts - ti

v = initial velocity (towards kerbin is negative)
h = initial height
g = acceleration due to gravity
r = acceleration from rocket engine

ts = -v/(r-g)
h = v^2/(2*(r-g))

ti = (v+sqrt(v^2+2gh))/g

 -v/(r-g)=(v+sqrt(v^2+2*g*h))/g + t, v=-20, g=10, h=v^2/(2*(r-g)), r=12

dt = -1/5 sqrt(3/2) sqrt(v^2)-(3 v)/5


Other thoughts:
After altitude falls below the buffer:

throttle <- your_suicide_burn_alt / radar_alt

you just have to update your estimation for D constantly.
