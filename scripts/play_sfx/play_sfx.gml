
function play_sfx(argument0){
audio_play_sound(argument0,2,0)
}

function play_music(argument0) {
if !audio_is_playing(argument0)
audio_play_sound(argument0,1,1)
}