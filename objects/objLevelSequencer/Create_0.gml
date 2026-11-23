/// @description Level Sequencer

phase = 0
slidetime = 0

mode = 0 //0 = simply move camera up, 1 = stop camera in place, 2 = transitioning from 1 to 0

for (k = 0; k < 20; k ++)
flyto[k] = 0 //y value to fly to


///Level by level
if room = rmLevel1
{
flyto[0] = 2160
flyto[1] = 1860
flyto[2] = 1080
}