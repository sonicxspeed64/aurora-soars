
function draw_hud(argument0,argument1,argument2){

var camx = camera_get_view_x(view_camera[0]), camy = camera_get_view_y(view_camera[0]);

draw_set_font(fntText)


draw_set_color(c_black)
draw_text_transformed(argument0+camx+1,argument1+camy+1,argument2,0.5,0.5,0)
draw_set_color(c_white)
draw_text_transformed(argument0+camx,argument1+camy,argument2,0.5,0.5,0)

}