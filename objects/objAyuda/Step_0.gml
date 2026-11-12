/// @description Insert description here
// You can write your code in this editor

if global.Right > global.Left
{
xspeed = 2
}
else if global.Right < global.Left
{
xspeed = -2
}
else
{
xspeed = 0
}

if global.Down > global.Up
{
yspeed = 2
}
else if global.Down < global.Up
{
yspeed = -2
}
else
{
yspeed = 0
}



x += xspeed
y += yspeed