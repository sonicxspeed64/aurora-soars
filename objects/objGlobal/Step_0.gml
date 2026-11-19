/// @description There Was Nothing


realviewy += camyspeed
if realviewy < 0
realviewy = 0


camera_set_view_pos(view_camera[0],realviewx,realviewy)


if circular > -1
circular --

global.step ++