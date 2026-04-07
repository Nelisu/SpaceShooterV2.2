if global.Hitstop exit;

if x > room_width - sprite_width/2 or x < sprite_width/2{
    Velh *= -1;
}
if y > room_height - sprite_height or y < sprite_height{
    Velv *= -1;
}

x += Velh;
y += Velv;

LifeTime ++;
if LifeTime > Lifespan/10 * 8{
    Alpha -= 1 / (game_get_speed(gamespeed_fps) * 2);
}
if Alpha <= 0{
    instance_destroy();
}

if Velv > .2 or Velv < -.2{
    Velv = lerp(Velv, .2 * sign(Velv), .01);
}