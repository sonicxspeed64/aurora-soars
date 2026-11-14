/// @description Insert description here
// You can write your code in this editor


if contshow > 0
contshow --

if global.DEBUG
{
if keyboard_check(vk_control)
{
if keyboard_check_pressed(ord("R"))
room_restart()
}

if keyboard_check(vk_shift)
room_speed = 300
else if keyboard_check(vk_numpad2) or keyboard_check(vk_backspace)
{
room_speed = 10
if keyboard_check(190) //dot
room_speed = 3
}
else
room_speed = 60
}