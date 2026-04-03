var _Ataque = choose(1, 2);

if _Ataque == 1{
    for (var i = -1; i < 2; i++){
        var _Tiro = instance_create_layer(x, y, "Tiros", ObjTiroInimigo);
        _Tiro.direction = 270 + 20 * i;
        _Tiro.speed = 6;
        _Tiro.sprite_index = SprTiro2Inimigo3;
    }
}
else{
    var _Tiro = instance_create_layer(x, y, "Tiros", ObjTiroInimigo);
    if instance_exists(ObjPlayer){
        _Tiro.direction = point_direction(_Tiro.x, _Tiro.y, ObjPlayer.x, ObjPlayer.y);
    }
    _Tiro.speed = 9;
    _Tiro.image_angle = direction;
}
Ataques ++;