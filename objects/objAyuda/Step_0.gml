/// @description Step by Step

if playable
{
if boosting > 0
{
if totspeed < 2
totspeed += 0.25
if trail < 2
trail += 0.125

dir = point_direction(0,0,xspeed,-yspeed)
xspeed = dcos(dir) * totspeed
yspeed = dsin(dir) * totspeed

boost -= 2
boosting --

if boosting = 0
{
//back to default speeds
trail = 0
}
}
else
{
if global.Right > global.Left and !place_meeting(x+1,y,objSolid)
dir = 1
else if global.Right < global.Left and !place_meeting(x-1,y,objSolid)
dir = -1
else
dir = 0

if global.Down > global.Up and !place_meeting(x+dir,y+1,objSolid)
dir = point_direction(0,0,dir,1)
else if global.Down < global.Up and !place_meeting(x+dir,y-1,objSolid)
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
if global.stickdis > 0.01
{
dir = global.stickdir

if abs(totspeed - global.stickdis) <= 0.125
totspeed = global.stickdis
else
totspeed += sign(global.stickdis-totspeed) * 0.125

xspeed = dcos(dir) * totspeed
yspeed = -dsin(dir) * totspeed


}
else
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
play_sfx(sndBoost)

if global.Right = global.Left and global.Down = global.Up
and global.stickdis <= 0.01
dir = 90
}

xspeed = dcos(dir) * totspeed
yspeed = -dsin(dir) * totspeed

if boost < 256
boost += 0.125
}
}
else
{
if introtime > 0
{
introtime --
if introtime = 0
{
yspeed = 0
playable = true
}
}
}

if place_meeting(x+ceil(xspeed),y,objSolid)
{
xspeed = ceil(xspeed)

if xspeed > 0
x = floor(x)
else
x = ceil(x)

for (k = abs(xspeed); k > 0; k --)
if !place_meeting(x+sign(xspeed)*k,y,objSolid)
{
x += sign(xspeed)*k
break;
}
xspeed = 0
totspeed = point_distance(0,0,0,yspeed)
}

if place_meeting(x,y+ceil(yspeed+objGlobal.camyspeed),objSolid)
{
var totyspeed = ceil(yspeed + objGlobal.camyspeed);

if totyspeed > 0
y = floor(y)
else
y = ceil(y)

for (k = abs(totyspeed); k > 0; k --)
if !place_meeting(x,y+k,objSolid)
{
y += k * sign(totyspeed)
break;
}
yspeed = 0
y -= objGlobal.camyspeed
totspeed = point_distance(0,0,xspeed,0)
}

x += xspeed
y += yspeed + objGlobal.camyspeed

if x < 123
x = 123
if x > 517
x = 517