/// @description Step by Step

if global.Right > global.Left
{
xspeed = 1
}
else if global.Right < global.Left
{
xspeed = -1
}
else
{
xspeed = 0
}

if global.Down > global.Up
{
yspeed = 1
}
else if global.Down < global.Up
{
yspeed = -1
}
else
{
yspeed = 0
}

if boosting = 0 and boost >= 64
if global.Jump = 2
{
boosting = 32
objGlobal.circular = 17
}

x += xspeed
y += yspeed

if skills > 2
{
if boosting > 0
{
boost -= 2
boosting --

if boosting = 0
{
//back to default speeds
}
}
else
{
if boost < 256
boost += 0.125
}
}

if x < 123
x = 123
if x > 517
x = 517