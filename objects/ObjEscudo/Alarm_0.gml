image_index += 1;

if image_index < sprite_get_number(SprEscudo) - 1{
    alarm[0] = TempoEscudo;
}
else{
    alarm[1] = game_get_speed(gamespeed_fps) * 4;
}