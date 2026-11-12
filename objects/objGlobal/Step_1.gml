/// @description Inputs

//i ain't doing custom controls this time have fun
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
