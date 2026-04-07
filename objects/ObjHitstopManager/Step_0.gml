if global.Hitstop{
    TimerHitstop--;
    if !BackgroundSpeedSaved{
        BackgroundsSpeed = StopBackgrounds(Backgrounds);
        BackgroundSpeedSaved = true;
    }
    
    with(all){
        image_speed = 0;
    }
}

if TimerHitstop <= 0{
    BackgroundSpeedSaved = false;
    global.Hitstop = false;
    ReturnBackgroundSpeed(Backgrounds, BackgroundsSpeed);
    with(all){
        image_speed = 1;
    }
}