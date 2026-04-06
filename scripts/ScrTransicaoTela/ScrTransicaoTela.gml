global.Destino = RmGame;
global.Transicao = false;

function TrocarRoom(){
    room_goto(global.Destino);
}

function DesligarTransicao(){
    global.Transicao = false;
}

function CriarTransicao(_Destino = RmMenu, _X = 0, _Y = 0){
    if !global.Transicao{
        layer_sequence_create("Transicao", _X, _Y, SqTransicao1);
        global.Destino = _Destino;
        global.Transicao = true;
        audio_stop_all();
    }
}