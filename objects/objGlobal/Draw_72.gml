/// @description Sky

draw_set_color(bgcol)
draw_rectangle(0,camera_get_view_y(view_camera[0]),640,camera_get_view_y(view_camera[0])+360,false)
draw_set_color(c_white)

draw_sprite_ext(sprSkyGradient,0,120,camera_get_view_y(view_camera[0])+30,1,1,0,gradi,1)
draw_sprite_ext(sprSkyGradient,0,520,camera_get_view_y(view_camera[0])+30,-1,1,0,gradi,1)
draw_sprite_ext(sprSkyGradient,0,120,camera_get_view_y(view_camera[0])+331,1,-1,0,gradi,1)
draw_sprite_ext(sprSkyGradient,0,520,camera_get_view_y(view_camera[0])+331,-1,-1,0,gradi,1)