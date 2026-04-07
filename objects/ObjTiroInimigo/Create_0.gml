Velv = 0;
Velh = 0;
Dir = 270;
Speed = 6;

if audio_is_playing(SndLaser2){
    audio_stop_sound(SndLaser2);
}
audio_play_sound(SndLaser2, 1, false);