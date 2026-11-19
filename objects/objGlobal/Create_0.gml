/// @description In The Beginning...

gradi = c_black
bgcol = c_white
if room = rmLevel1
{
bgcol = #D8B8F8//#E45C10
gradi = #D800CC//#FCA044
}

instance_create_layer(0,0,"Instances",objInputs)

realviewx = 0
realviewy = 2880

global.paused = false

circular = 0 //effect when pressing the boost

global.step = 0

camyspeed = -1