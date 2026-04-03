Velv = 0;
Velh = 0;
Speed = 3;
LevelTiro = 1;

Tiro1 = function(){
    var _Tiro = instance_create_layer(x, y, layer, ObjTiroPlayer);
}

Tiro2 = function(){
    for (var i = -1; i < 2; i += 2){
        var _Tiro = instance_create_layer(x, y, layer, ObjTiroPlayer);
        _Tiro.Dir = i;
        _Tiro.Mode = 2;
    }
}

Tiro3 = function(){
    for (var i = -1; i < 2; i += 2){
        var _Tiro = instance_create_layer(x, y, layer, ObjTiroPlayer);
        _Tiro.Dir = i;
        _Tiro.Mode = 2;
    }
    instance_create_layer(x, y, layer, ObjTiroPlayer);
}