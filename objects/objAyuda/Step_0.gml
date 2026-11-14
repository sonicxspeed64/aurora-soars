/// @description Step by Step

if playable
{
if boosting > 0
{
if totspeed < 2
totspeed += 0.25

dir = point_direction(0,0,xspeed,-yspeed)
xspeed = dcos(dir) * totspeed
yspeed = dsin(dir) * totspeed

boost -= 2
boosting --

if boosting = 0
{
//back to default speeds
}
}
else
{
if global.Right > global.Left
dir = 1
else if global.Right < global.Left
dir = -1
else
dir = 0

if global.Down > global.Up
dir = point_direction(0,0,dir,1)
else if global.Down < global.Up
dir = point_direction(0,0,dir,-1)
else
{
if dir = 0
dir = -1
else
dir = point_direction(0,0,dir,0)
}

if dir = -1
{
if totspeed > 0
{
totspeed -= 0.125
dir = point_direction(0,0,xspeed,yspeed)
}
else
{
xspeed = 0
yspeed = 0
totspeed = 0
}
}
else
{
if totspeed < 1
totspeed += 0.125
else if totspeed > 1
totspeed -= 0.125
else
totspeed = 1
}

if boost >= 64
if global.Jump = 2
{
boosting = 32
objGlobal.circular = 17
totspeed = 1

if global.Right = global.Left and global.Down = global.Up
dir = 90
}

xspeed = dcos(dir) * totspeed
yspeed = -dsin(dir) * totspeed

if boost < 256
boost += 0.125
}
}

x += xspeed
y += yspeed

if x < 123
x = 123
if x > 517
x = 517