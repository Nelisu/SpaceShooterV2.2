if !AudioPlayed{
    audio_play_sound(SndShieldDown, 1, false);
    AudioPlayed = true;
}
image_index -= 1;

if image_index <= 0{
    instance_destroy();
}
else{
    alarm[1] = TempoEscudo;
}