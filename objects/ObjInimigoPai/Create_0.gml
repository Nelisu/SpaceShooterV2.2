Vida = 1;
DestX = 0;
DestY = 0;
Modo = Modos.Spawn;
Speed = 10;
Velv = 0;
Velh = 0;

Morte = function(){
    if Vida <= 0{
        var _Vfx = instance_create_layer(x, y, "Vfx", ObjVfx);
        _Vfx.sprite_index = SprInimigoExplosao;
        audio_play_sound(SndExplosion, 1, false);
        if instance_exists(ObjControl){
            with(ObjControl){
                for (var i = 0; i < array_length(Filhos); i++){
                    if Filhos[i] == other.id
                        array_delete(Filhos, i, 1);
                }
            }
        }
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