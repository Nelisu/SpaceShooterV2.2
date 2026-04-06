image_angle = direction + 90;

if place_meeting(x, y, ObjEscudo){
    CreateVfx(SprTiroExplosao);
    instance_destroy();
    exit; 
}

var _Player = instance_place(x, y, ObjPlayer)
if _Player{
    with (_Player){
    	PerdeVida();
    }
    CreateVfx(SprTiroExplosao);
    instance_destroy(); 
}