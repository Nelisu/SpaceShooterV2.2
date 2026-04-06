if XScale > 1.5 shader_set(ShaderWhite);
draw_sprite_ext(SprNave, image_index, x, y, XScale, YScale, 0, c_white, 1);
shader_reset();
//draw_set_halign(fa_center);
//draw_set_valign(fa_bottom);
//draw_text(x, y - sprite_height/2 - 2, "Level tiro:" + string(LevelTiro));
//draw_set_halign(-1);
//draw_set_valign(-1);