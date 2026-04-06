var _Cima = keyboard_check_pressed(ord("W"));
var _Baixo = keyboard_check_pressed(ord("S"));
var _Select = keyboard_check_pressed(vk_space);

if _Cima or _Baixo{
    var _Ind = BotoesIndex;
    BotoesIndex += _Baixo - _Cima;
    BotoesIndex = clamp(BotoesIndex, 0, array_length(Botoes) - 1);
    if _Ind != BotoesIndex{
        if audio_is_playing(SndZap){
            audio_stop_sound(SndZap);
        }
        audio_play_sound(SndZap, 1, 0, , , .9);
        Offset = 0;
    }
}

if _Select{
    switch(BotoesIndex){
        case 0: //jogar
            CriarTransicao(RmGame);
            break;
        
        case 1: //tutorial
            CriarTransicao(RmTutorial);
            break;
        
        case 2: //sair
            game_end();
            break;
    }
}

Offset = lerp(Offset, OffsetMax, .1);