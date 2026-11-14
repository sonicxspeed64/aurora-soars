/// @description Inputs

//i ain't doing custom controls this time korieteh have fun
global.Right = scrInputPress(vk_right,ord("D"),gp_padr)
global.Left = scrInputPress(vk_left,ord("A"),gp_padl)
global.Down = scrInputPress(vk_down,ord("S"),gp_padd)
global.Up = scrInputPress(vk_up,ord("W"),gp_padu)

global.Jump = scrInputPress(ord("Z"),vk_space,gp_face1)
global.Extra = scrInputPress(ord("X"),vk_shift,gp_face2)
global.Kick = scrInputPress(ord("C"),ord("K"),gp_face3)

global.Confirm = scrInputPress(ord("Z"),vk_space,gp_face2)
global.Cancel = scrInputPress(ord("X"),vk_backspace,gp_face1)
global.Pause = scrInputPress(ord("C"),vk_return,gp_start)

//changing controller input
if keyboard_check(vk_escape)
for (k = 0; k < 10; k ++)
if gamepad_button_check_pressed(k,gp_face1)
{
//if global.cont != k
{
global.cont = k
ini_open("Ayuda.Win")
ini_write_real("Controls","Port",k)
ini_close()

contshow = 200
}
break;
}