draw_self()

draw_sprite(sprDreamWings,global.step,x,y)

if boosting
{
draw_sprite_ext(sprAyuda,2 + (global.step%8 < 4),x-xspeed*trail,y-yspeed*trail,1,1,0,c_white,1)
}
