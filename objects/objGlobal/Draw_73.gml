/// @description Colourz

var camy = camera_get_view_y(view_camera[0]);

draw_set_color(c_black)
draw_rectangle(0,camy,640,camy+30,false)
draw_rectangle(0,camy+330,640,camy+360,false)
draw_rectangle(0,camy,120,camy+360,false)
draw_rectangle(520,camy,640,camy+360,false)
draw_set_color(c_white)

draw_sprite_ext(sprHUDDpad,0,60,camy+180,1,1,0,c_white,1)
draw_sprite_ext(sprHUDDpad,1,60,camy+180,sign(global.Right-global.Left),1,0,c_white,1)
if global.Down != global.Up
draw_sprite_ext(sprHUDDpad,1,60,camy+180,1,1,sign(global.Down-global.Up)*270,c_white,1)