function CreateVfx(_Sprite = SprTiroExplosao){
    var _Vfx = instance_create_layer(x, y, "Vfx", ObjVfx);
    _Vfx.sprite_index = _Sprite;
}

function ScreenShake(_Magnitude = 0){
    if instance_exists(ObjScreenShake){
        with(ObjScreenShake){
            if _Magnitude > Magnitude{
                Magnitude = _Magnitude;
            }
        }
    }
}

function DefineEscala(){
    XScale = 1;
    YScale = 1;
}

function Stretch(_XScale = 1, _YScale = 1){
    XScale = _XScale;
    YScale = _YScale;
}

function StretchReset(_Velocidade = .1){
    XScale = lerp(XScale, 1, _Velocidade);
    YScale = lerp(YScale, 1, _Velocidade);
}