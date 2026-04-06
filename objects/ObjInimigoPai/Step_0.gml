if place_meeting(x, y, ObjEscudo){
    Vida = 0;
    Morte();
    exit;
}
var _Player = instance_place(x, y, ObjPlayer);
if _Player{
    with (_Player){
        PerdeVida();
    }
    Vida = 0;
    Morte();
}

if image_xscale != 1 or image_yscale != 1{
    image_xscale = lerp(image_xscale, 1, .1);
    image_yscale = lerp(image_yscale, 1, .1);
    
    if image_xscale < 1.05 image_xscale = 1;
    if image_yscale > .95 image_yscale = 1;    
}