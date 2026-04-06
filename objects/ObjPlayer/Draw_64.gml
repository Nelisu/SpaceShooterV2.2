var _GuiW = display_get_gui_width();
var _GuiH = display_get_gui_height();
var _XOffset = 5;
var _YOffset = _GuiH - 5;
var _Scale = 1;
var _Alpha = .5;

if !global.Transicao{
    for (var i = 0; i < Vidas; i++){
        draw_sprite_ext(SprNaveGui, 1, _XOffset + sprite_get_width(SprNaveGui)/2 + (sprite_get_width(SprNaveGui) + _XOffset) * i, _YOffset - sprite_get_height(SprNaveGui), _Scale, _Scale, 0, c_white, _Alpha)
    }
    
    _YOffset = _YOffset - sprite_get_height(SprNaveGui) - 5;
    for (var i = 0; i < Escudo; i++){
        draw_sprite_ext(SprEscudoGui, 1, _XOffset + sprite_get_width(SprNaveGui)/2 + (sprite_get_width(SprNaveGui) + _XOffset) * i, _YOffset - sprite_get_height(SprNaveGui), _Scale, _Scale, 0, c_white, _Alpha);
    }
}