/// @description Insert description here
// You can write your code in this editor

draw_set_font(fntText)

if menu = -9
{

draw_set_color(#f8b800)
draw_line_width(0,164,80*slidetime,164,20)

draw_set_color(c_white)
draw_sprite_ext(sprIntroOwl,0,80*slidetime,164,2,2,0,c_white,1)
}
else if menu = -8
{
draw_set_color(#f8b800)
draw_line_width(0,164,640,164,slidetime)
}
else if menu > -8 and menu < -3
{
draw_set_color(#f8b800)
draw_line_width(0,164,640,164,100)

draw_set_color(c_white)
if menu = -7
{
draw_sprite_ext(sprProf,0,320+power(slidetime,2),164,1,1,0,c_white,1)
}



if menu = -6 or menu = -5 or menu = -4
{
draw_sprite_ext(sprProf,0,320,164,1,1,0,c_white,1)

if menu = -5
draw_hud(22,327,"David presents: a game")
}
}

if blackscreen > 0
{
draw_set_alpha(blackscreen)
draw_rectangle_color(0,0,640,360,c_black,c_black,c_black,c_black,false)
draw_set_alpha(1)
}