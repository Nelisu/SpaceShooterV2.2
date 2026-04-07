event_inherited();
Funcao = undefined;
Range = [sprite_height, room_height/3 + 30];
Canshoot = false;
Inposition = false;
Speed = 2;
Tempo = 0;
AtaquesMax = 3;
Ataques = 0;
Alarme1Time = game_get_speed(gamespeed_fps) * 2;
Alarme1 = -1;
Alarme2Time = game_get_speed(gamespeed_fps);
Alarme2 = -1;

Ataque = function(){
    if Ataques < AtaquesMax{
        if Alarme1 == -1{
            Alarme1 = Alarme1Time * random_range(.8, 1.2);
        }
        
        if Alarme1 > 0{
            Alarme1 --;
            Alarme1 = round(Alarme1);
        }
        else if Alarme1 == 0{
            var _Shot = instance_create_layer(x, y, "Tiros", ObjTiroInimigo);
            _Shot.Velv = 6;
            _Shot.sprite_index = SprTiroInimigo1;
            Ataques ++;
            Alarme1 = Alarme1Time * random_range(.8, 1.2);
        }
    }
    else{
        if Alarme2 == -1{
            Alarme2 = Alarme2Time;
        }
        
        if Alarme2 > 0{
            Alarme2 --;
            Alarme2 = round(Alarme2);
        }
        else if Alarme2 == 0{
            Modo = Modos.Sair;
            Velh = Speed * 2 * sign(room_width/2 - x);
        }
    }
}