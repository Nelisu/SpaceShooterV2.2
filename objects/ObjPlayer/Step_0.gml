var _Right = keyboard_check(ord("D"));
var _Left= keyboard_check(ord("A"));
var _Up = keyboard_check(ord("W"));
var _Down = keyboard_check(ord("S"));
var _Shield = keyboard_check_pressed(ord("E"));
var _Shoot = keyboard_check(vk_space);

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

if _Shield and !instance_exists(ObjEscudo){
   var _Escudo = instance_create_layer(x, y, layer, ObjEscudo);
}
if _Shoot and alarm[1] == -1{
    var _Shot = instance_create_layer(x, y, layer, ObjTiroPlayer);
    alarm[1] = game_get_speed(gamespeed_fps)/2;
}

x += Velh;
x = clamp(x, sprite_width/2, room_width - sprite_width/2);
y += Velv;
y = clamp(y, sprite_height/2, room_height - sprite_height/2);