Tipo = TiposPowerUp.Tiro;
Sprites = [SprPowerUp1, SprPowerUp2, SprPowerUp3, SprPowerUp4, SprPowerUp5];
Lifespan = game_get_speed(gamespeed_fps) * 10;
LifeTime = 0;
Alpha = 1;
Scale = 1;
Velv = 0;
Velh = 0;

Tipo = choose(TiposPowerUp.Tiro, TiposPowerUp.Vida);
Picked = function(){
    CreateVfx(SprTiroExplosao);
    var _Snd = SndTwoTone;
    if !audio_is_playing(_Snd){
        audio_stop_sound(_Snd);
    }
    audio_play_sound(_Snd, 1, false);
    instance_destroy();
}
var _Multiply = 1; //debug
Velv = 2 * _Multiply;
Velh = random_range(-.2, .2) * _Multiply;