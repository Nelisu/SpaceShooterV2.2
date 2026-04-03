randomize();

Filhos = [];
CheckChildren = function(){
    for (var i = 0; i < array_length(Filhos); i++){
        if Filhos[i].Inposition != true{
            return false;
        }
    }
    for (var i = 0; i < array_length(Filhos); i++){
        with (Filhos[i]){
            Canshoot = true;
            if Funcao == Funcoes.Trave{
                Velv = Speed * choose(-1, 1);
            }
            else if Funcao == Funcoes.Goleiro{
                Velv = .4 ;
            }
        }
    }
}

SpawnEnemy1 = function(){
    var _Inim = instance_create_layer(room_width/2, -90, "Inimigos", ObjInimigo1);
    _Inim.Funcao = Funcoes.Goleiro;
    _Inim.DestY = room_width/2.5;
    array_push(Filhos, _Inim);
    for (var i = 0; i < 2; i++){
        var _SprW = sprite_get_height(SprInimigo1)/2;
        _Inim = instance_create_layer((_SprW - _SprW * i) + (room_width - _SprW) * i, -90, "Inimigos", ObjInimigo1);
        _Inim.Funcao = Funcoes.Trave;
        _Inim.DestY = room_height/4 + irandom_range(-30, 30);
        array_push(Filhos, _Inim);
    }
}

SpawnEnemy3 = function(){
    var _Inim = instance_create_layer(random_range(40, room_width -40), -90, "Inimigos", ObjInimigo3);
    _Inim.DestX = _Inim.x;
    _Inim.DestY = room_height/3;
    with (_Inim){
        if place_meeting(x, DestY, ObjInimigo3){
            x = x + sprite_width/2 * sign(x + room_width/2);
            x = clamp(x, sprite_width/2, room_width - sprite_width/2);
        }
    }
}