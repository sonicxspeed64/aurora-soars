
global.DEBUG = true

ini_open("Ayuda.Win")

global.cont = ini_read_real("Controls","Port",0)

var winw = ini_read_real("Options","WinWidth",16)

if winw = 16
{
var dispw = display_get_width();

if dispw < 1280
winw = 640
else if dispw < 1920
winw = 1280
else if dispw < 2560
winw = 1920
else if dispw < 3200
winw = 2560
else if dispw < 3840
winw = 3200
else
winw = 3840
}
else
{
window_center()
}

window_set_size(winw,winw*9/16)

ini_close()