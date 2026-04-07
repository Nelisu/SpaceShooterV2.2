event_inherited();

switch (Modo){
    case Modos.Spawn:
        var _Dist = point_distance(0, y, 0, DestY);
        if _Dist >= 1{
            y = lerp(y, DestY, .1);
        }
        else{
            Modo = Modos.Ataque
        }
        break;
    
    case Modos.Ataque:
        //alarme 1 atirar
        if Alarm1 > 0{
            Alarm1--;
        }
        else if Alarm1 == 0{
            var _Ataque = choose(1, 2);

            if _Ataque == 1{
                for (var i = -1; i < 2; i++){
                var _Tiro = instance_create_layer(x, y, "Tiros", ObjTiroInimigo);
                _Tiro.Velv = lengthdir_y(6, 270 + 20 * i);
                _Tiro.Velh = lengthdir_x(6, 270 + 20 * i);
                _Tiro.sprite_index = SprTiro2Inimigo3;
                }
            }
            else{
                var _Tiro = instance_create_layer(x, y, "Tiros", ObjTiroInimigo);
                if instance_exists(ObjPlayer){
                    var _Dir = point_direction(x, y, ObjPlayer.x, ObjPlayer.y);
                    _Tiro.Velv = lengthdir_y(9, _Dir);
                    _Tiro.Velh = lengthdir_x(9, _Dir);
                    _Tiro.Dir = _Dir;
                    }
            }
            Ataques ++;
            Alarm1 = -1;
        }
        
        //Alarme2 sair da room
        if Alarm2 > 0{
            Alarm2--;
        }
        else if Alarm2 == 0{
            Modo = Modos.Sair;
            DestY = room_height/4/2;
            DestX = choose(-100, room_width + 100);
        }
        
        if Ataques < 3 and Alarm1 == -1{
            Alarm1 = Alarm1Time;
        }
        else if Ataques >= 3 and Alarm2 == -1{
            Alarm2 = Alarm2Time;
        }
        break;
    
    case Modos.Sair:
        var _Dir = point_direction(x, y, DestX, DestY);
        Velv = lengthdir_y(Speed, _Dir);
        Velh = lengthdir_x(Speed, _Dir);
        
        x += Velh;
        y += Velv;
        
        if x < -sprite_width or x > room_width + sprite_width{
            OutOfBounds();
        }
        break;
}

