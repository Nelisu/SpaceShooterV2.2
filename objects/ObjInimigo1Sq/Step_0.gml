if global.Hitstop exit;

event_inherited();

if (!in_sequence and Sq){
    OutOfBounds();
}

if Alarm1 > 0{
    Alarm1 --;
}
else if Alarm1 <= 0{
    var _Shot = instance_create_layer(x, y, "Tiros", ObjTiroInimigo);
    _Shot.Velv = 6;
    _Shot.sprite_index = SprTiroInimigo1;

    Alarm1 = Alarm1Time * random_range(.85, 1.15);
}