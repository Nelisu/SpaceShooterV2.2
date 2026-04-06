var _GuiW = display_get_gui_width();
var _GuiH = display_get_gui_height();
var _X = 5;
var _Y = _GuiH/2;

if !global.Transicao{
    draw_set_halign(fa_left);
    draw_set_valign(fa_middle);
    draw_set_font(FntArialBlack);
    var _Pos = -1;
    var _Cor = c_red;
    for(var i = 0; i < array_length(Botoes); i ++){
        var _Offset = 0;
        if BotoesIndex == i{
            draw_set_color(_Cor);
            _Offset = Offset;
        }
        draw_text(_X + _Offset, _Y + string_height("T") * _Pos, Botoes[i]);
        _Pos++;
        draw_set_color(c_white);
    }
    draw_set_font(-1);
    draw_set_halign(-1); 
    draw_set_valign(-1);
}