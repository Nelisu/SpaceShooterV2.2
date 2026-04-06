if Iframes > 0{
    Iframes --;
}

var _Right = keyboard_check(ord("D"));
var _Left= keyboard_check(ord("A"));
var _Up = keyboard_check(ord("W"));
var _Down = keyboard_check(ord("S"));
var _Shield = keyboard_check_pressed(ord("E"));
var _Shoot = keyboard_check(vk_space);
var _Exit = keyboard_check_pressed(vk_escape);

if _Right xor _Left{
    Velh = lengthdir_x(Speed, point_direction(0, 0, _Right - _Left, 0));
}
else{
    Velh = 0;
}
if _Down xor _Up{
    Velv = lengthdir_y(Speed, point_direction(0, 0, 0, _Down - _Up));
}
else{
    Velv = 0;
}

if _Shield and !instance_exists(ObjEscudo) and Escudo > 0{
   var _Escudo = instance_create_layer(x, y, layer, ObjEscudo);
    Escudo --;
}
if _Shoot and alarm[1] == -1{
    switch (LevelTiro){
    	case 1:
            Tiro1();
            break;
        
        case 2:
            Tiro2();
            break;
        
        case 3:
            Tiro3();
            break;
    }
    if audio_is_playing(SndLaser1){
        audio_stop_sound(SndLaser1);
    }
    audio_play_sound(SndLaser1, 1, false);
    alarm[1] = VelocidadeDisparo;
}

x += Velh;
x = clamp(x, sprite_width/2, room_width - sprite_width/2);
y += Velv;
y = clamp(y, sprite_height/2, room_height - sprite_height/2);

StretchReset();

var _Power = instance_place(x, y, ObjPowerUp);

//powerups
if _Power{
    switch (_Power.Tipo){
        case TiposPowerUp.Tiro:
            LevelTiro ++;
            LevelTiro = clamp(LevelTiro, 1, 3);
            _Power.Picked();
            break;
        
        case TiposPowerUp.Vida:
            Vidas ++;
            Vidas = clamp(Vidas, -1, 5);
            _Power.Picked();
            break;
    }
}

if _Exit{
    CriarTransicao(RmMenu);
}
//if mouse_check_button_pressed(mb_left){
    //LevelTiro ++;
    //LevelTiro %= 4;
    //LevelTiro = clamp(LevelTiro, 1, 3);
//}
//if keyboard_check_pressed(ord("Q")){
    //PerdeVida();
//}