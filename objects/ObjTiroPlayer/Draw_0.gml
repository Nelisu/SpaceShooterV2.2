draw_self();
gpu_set_blendmode(bm_add);
draw_sprite_ext(SprGlowTiro1, 0, x, y, image_xscale, image_yscale, 0, Cor, .5);
gpu_set_blendmode(bm_normal);