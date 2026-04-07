if global.Hitstop exit;
image_alpha -= .1;
image_xscale -= .1;
image_xscale = clamp(image_xscale, 0, 1);

if image_alpha <= 0{
    instance_destroy();
}