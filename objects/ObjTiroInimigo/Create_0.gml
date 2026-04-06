if audio_is_playing(SndLaser2){
    audio_stop_sound(SndLaser2);
}

audio_play_sound(SndLaser2, 1, false);
if !instance_exists(ObjPlayer){
    direction = 270;
}