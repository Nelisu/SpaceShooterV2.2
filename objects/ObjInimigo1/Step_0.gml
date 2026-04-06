switch (Modo){
    case Modos.Spawn:
        var _Dist = point_distance(0, y, 0, DestY);
        if _Dist >= 6{
            y = lerp(y, DestY, .1);
        }
        else if Canshoot{
            Modo = Modos.Ataque
        }
        else{
            Inposition = true;
            if instance_exists(ObjControl){
                with(ObjControl){
                    CheckChildren();
                }
            }
        }
        break;
    
    case Modos.Ataque:
        if Funcao == Funcoes.Trave{
            //Movimento
            y += Velv;
            
            if y > Range[1] or y < Range[0]{
                Velv *= -1;
            }
            
            if Ataques < 2 and alarm[1] == -1{
                alarm[1] = game_get_speed(gamespeed_fps) * 2 * random_range(.8, 1.2);
            }
            else if Ataques >= 2 and alarm[2] == -1{
                alarm[2] = game_get_speed(gamespeed_fps);
            }
        }
        else if Funcao == Funcoes.Goleiro{
            //Movimento
            var _Amp = 50;
            Tempo += .1;
            x = xstart + (sin(Tempo * .5) * _Amp);
            
            y += Velv;
            
            if y > room_width/2.5 or y < sprite_height{
                Velv *= -1;
            }
            
            if Ataques < 2 and alarm[1] == -1{
                alarm[1] = game_get_speed(gamespeed_fps) * random_range(.8, 1.2);
            }
            else if Ataques >= 2 and alarm[2] == -1{
                alarm[2] = game_get_speed(gamespeed_fps);
            }
        }
        break;
    
    case Modos.Sair:
        if Funcao == Funcoes.Trave{
            x += Velh;
            
            if x > room_width + 60 or x < -60{
                OutOfBounds();
            }
        }
        else if Funcao == Funcoes.Goleiro{
            y -= Speed * 2;
            
            if y < - 90{
                OutOfBounds();
            } 
        }
        break;
}
