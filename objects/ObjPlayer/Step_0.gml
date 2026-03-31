var _Right = keyboard_check(ord("D"));
var _Left= keyboard_check(ord("A"));
var _Up = keyboard_check(ord("W"));
var _Down = keyboard_check(ord("S"));

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

x += Velh;
y += Velv;