if global.Hitstop exit;

if image_xscale != 1{
    image_xscale = lerp(image_xscale, 1, .2);
    image_yscale = image_xscale;
}
Velv = lerp(Velv, VelvMax, .05);
y += Velv;
x += Velh;

if y < 0 - sprite_height/2{
    instance_destroy();
}
////zigzag em V
//if Mode == 1{
    //var _Amp = 30;
    //if (x > xstart + _Amp and hspeed > 0) or (x < xstart - _Amp and hspeed < 0){
        //hspeed *= -1;
    //}
//}
//zigzag em S
else if Mode == 2{
    var _Amp = 30;
    var _Speed = 5;
    Tempo += .5;
    x = xstart + (sin(Tempo * .5) * _Amp) * Dir;
    image_angle = 90 - 45 * (sin(Tempo)) * Dir - 90;
}

var _Enemy = instance_place(x, y, ObjInimigoPai);
if _Enemy{
    with(_Enemy){
        PerdeVida();
        Morte();
    }
    CreateVfx(SprTiroExplosao);
    instance_destroy();
}

var _Rastro = instance_create_depth(x, y, depth, ObjTiroPlayerRastro);
_Rastro.Cor = Cor;
_Rastro.image_angle = image_angle;