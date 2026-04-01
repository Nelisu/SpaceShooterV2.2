if image_xscale != 1{
    image_xscale = lerp(image_xscale, 1, .2);
    image_yscale = image_xscale;
}
if y < 0 - sprite_height/2{
    instance_destroy();
}