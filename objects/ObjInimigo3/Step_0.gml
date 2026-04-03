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
        if Ataques < 3 and alarm[1] == -1{
            alarm[1] = game_get_speed(gamespeed_fps) * 2;
        }
        else if Ataques >= 3 and alarm[2] == -1{
            alarm[2] = game_get_speed(gamespeed_fps) * 2;
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