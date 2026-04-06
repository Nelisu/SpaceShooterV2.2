Vida = 1;
DestX = 0;
DestY = 0;
Modo = Modos.Spawn;
Speed = 10;
Velv = 0;
Velh = 0;
DefineEscala();

Morte = function(){
    if Vida <= 0{
        CreateVfx(SprInimigoExplosao);
        audio_play_sound(SndExplosion, 1, false);
        if instance_exists(ObjControl){
            with(ObjControl){
                for (var i = 0; i < array_length(Filhos); i++){
                    if Filhos[i] == other.id
                        array_delete(Filhos, i, 1);
                }
            }
        }
        var _Chance = random(99);
        if _Chance < 20{
            instance_create_layer(x, y, "Tiros", ObjPowerUp);
        }
        
        ScreenShake(10);
        instance_destroy();
    }
}

OutOfBounds = function(){
    if instance_exists(ObjControl){
        with(ObjControl){
            for (var i = 0; i < array_length(Filhos); i++){
                if Filhos[i] == other.id{
                    array_delete(Filhos, i, 1);
                }
            }
        }
    }
    //show_message("Teste")
    instance_destroy();
}

PerdeVida = function(_Dano = 1){
    Vida -= _Dano;
    image_xscale = 1.4;
    image_yscale = .6;
}