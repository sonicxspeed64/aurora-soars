/// @description Insert description here
// You can write your code in this editor

if contshow > 0
{
if contshow > 40 and contshow < 160
draw_hud(123,335,"Controller " + string(global.cont) + ": " + gamepad_get_description(global.cont))
else
{
var slider = contshow;
if contshow >= 160
slider = 200 - contshow

draw_hud(123,375 - slider,"Controller " + string(global.cont) + ": " + gamepad_get_description(global.cont))
}
}