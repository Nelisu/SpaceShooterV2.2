TempoEscudo = game_get_speed(gamespeed_fps) / sprite_get_number(SprEscudo);
alarm[0] = TempoEscudo;
image_xscale = 1.2;
image_yscale = image_xscale;
audio_play_sound(SndShieldUp, 1, false);
AudioPlayed = false;