/// @description Colourz

var camx = camera_get_view_x(view_camera[0]), camy = camera_get_view_y(view_camera[0]);

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


//right buttons
if objAyuda.boost < 64 and !objAyuda.boosting
draw_sprite_ext(sprHUDDpad,2,580,camy+110,1,1,0,#787878,1)
else
{
draw_sprite_ext(sprHUDDpad,2 + (objAyuda.boosting>0),580,camy+110,1,1,0,c_white,1)
}

if objAyuda.boost < 64
{
var col = c_white;
if objAyuda.boosting
col = #F8D8F8

draw_sprite_ext(sprButtonFill,objAyuda.boost,580,camy+110,1,1,0,col,1)
}
else
{
draw_sprite_ext(sprButtonFill,64,580,camy+110,1,1,0,#F8D8F8,1)

if objAyuda.boost < 128
draw_sprite_ext(sprButtonFill,objAyuda.boost-64,580,camy+110,1,1,270,#F8D8F8,1)
else
{
draw_sprite_ext(sprButtonFill,64,580,camy+110,1,1,270,#F8D8F8,1)

if objAyuda.boost < 192
draw_sprite_ext(sprButtonFill,objAyuda.boost-128,580,camy+110,1,1,180,#F8D8F8,1)
else
{
draw_sprite_ext(sprButtonFill,64,580,camy+110,1,1,180,#F8D8F8,1)

if objAyuda.boost < 256
draw_sprite_ext(sprButtonFill,objAyuda.boost-192,580,camy+110,1,1,90,#F8D8F8,1)
else
draw_sprite_ext(sprButtonFill,64,580,camy+110,1,1,90,#F8D8F8,1)
}
}
}
if circular > -1
{
for (k = 0; k < 360; k += 90)
draw_sprite_ext(sprButtonRing,circular+1,580,camy+110,1,1,k,c_white,1)
}

draw_sprite_ext(sprHUDDpad,4 + (global.Kick>0),580,camy+250,1,1,0,c_white,1)



if global.DEBUG
{
if keyboard_check(vk_shift)
room_speed = 300
else if keyboard_check(vk_numpad2)
room_speed = 10
else
room_speed = 60

if keyboard_check(vk_control)
	or keyboard_check(92) //"command" on mac
{
draw_hud(5,5,"Right: " + string(global.Right))
draw_hud(5,15,"Left: " + string(global.Left))
draw_hud(5,25,"Down: " + string(global.Down))
draw_hud(5,35,"Up: " + string(global.Up))

draw_hud(123,32,"Pos: (" + string(objAyuda.x) + ", " + string(objAyuda.y) + ")")
draw_hud(312,32,"Speeds: ")
}
}