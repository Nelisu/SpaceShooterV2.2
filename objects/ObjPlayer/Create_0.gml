Velv = 0;
Velh = 0;
Speed = 3;
LevelTiro = 1;
VelocidadeDisparo = game_get_speed(gamespeed_fps)/6;
TempoTiro = 0;
Vidas = 3;
Escudo = 3;
Iframes = 0;
DefineEscala();

PerdeVida = function(){
    if Iframes > 0 return;
    Vidas--;
    Iframes = game_get_speed(gamespeed_fps)/2;
    Stretch(2, .8);
    ScreenShake(5);
    AtivaHitstop(10);
    
    if Vidas < 0{
        audio_play_sound(SndExplosion, 1, false);
        CreateVfx(SprPlayerExplosao);
        ScreenShake(20);
        instance_destroy();
    }
}

Tiro1 = function(){
    var _Tiro = instance_create_layer(x, y, layer, ObjTiroPlayer);
    _Tiro.Velh = random_range(-.5, .5);
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
    var _Tiro = instance_create_layer(x, y, layer, ObjTiroPlayer);
}