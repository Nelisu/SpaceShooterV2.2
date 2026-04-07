if global.Hitstop exit;

if mouse_check_button_pressed(mb_left){
    SpawnEnemy1();
}
if mouse_check_button_pressed(mb_right){
    SpawnEnemy3();
}

if layer_sequence_is_finished(Sequence) and Alarm1 <= 0{
    layer_sequence_destroy(Sequence);
    Alarm1 = Alarm1Time * random_range(1.8, 2.1);
}

if Alarm1 > 0{
    Alarm1--;
}
else if !layer_sequence_exists("Sequences", Sequence){
    Sequence = layer_sequence_create("Sequences", 0, 0, Waves[WaveIndex]);
    WaveIndex ++;
    WaveIndex %= array_length(Waves);
}

if !instance_exists(ObjPlayer) and !Alarm10Activated and !global.Transicao{
    Alarm10 = Alarm10Time;
    Alarm10Activated = true;
}
if Alarm10 > 0{
    Alarm10--;
}
else if Alarm10Activated and Alarm10 == 0{
    CriarTransicao(RmMenu);
    Alarm10 = -1;
}