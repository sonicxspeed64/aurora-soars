/// @description There Was Nothing


//realviewy += camyspeed


camera_set_view_pos(view_camera[0],realviewx,realviewy)


if global.paused
{
}
else
{

}

if circular > -1
circular --
if contshow > 0
contshow --


if global.DEBUG
{
if keyboard_check(vk_control)
{
if keyboard_check_pressed(ord("R"))
room_restart()
}
}