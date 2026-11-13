
function scrInputPress(argument0,argument1,argument2){
//argument0,argument1 = keyboard inputs
//argument2 = controller input
//return -1,0,1 --> not held, held, pressed


if keyboard_check_pressed(argument0) or keyboard_check_pressed(argument1)
	or gamepad_button_check_pressed(cont,argument2)
return 2

if keyboard_check(argument0) or keyboard_check(argument1)
	or gamepad_button_check(cont,argument2)
return 1

return 0
}