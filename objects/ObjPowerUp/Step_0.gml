if x > room_width - sprite_width/2 or x < sprite_width/2{
    hspeed *= -1;
}
if y > room_height - sprite_height or y < sprite_height{
    vspeed *= -1;
}

LifeTime ++;
if LifeTime > Lifespan/10 * 8{
    Alpha -= 1 / (game_get_speed(gamespeed_fps) * 2);
}
if Alpha <= 0{
    instance_destroy();
}

if vspeed > .2 or vspeed < -.2{
    vspeed = lerp(vspeed, .2 * sign(vspeed), .01);
}