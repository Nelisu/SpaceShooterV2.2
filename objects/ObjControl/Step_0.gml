if mouse_check_button_pressed(mb_left){
    SpawnEnemy1();
}
if mouse_check_button_pressed(mb_right){
    SpawnEnemy3();
}

//show_debug_message(layer_sequence_is_finished(Sequence))
//var _Index = WaveIndex == 0 ? array_length(Waves) - 1 : WaveIndex - 1;
if layer_sequence_is_finished(Sequence) and alarm[1] == -1{
    layer_sequence_destroy(Sequence);
    alarm [1] = game_get_speed(gamespeed_fps) * random_range(1.8, 2.1);
}

if !instance_exists(ObjPlayer) and alarm[10] == -1 and !global.Transicao{
    alarm[10] = game_get_speed(gamespeed_fps);
}