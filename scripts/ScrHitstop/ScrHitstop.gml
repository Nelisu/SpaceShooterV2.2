global.Hitstop = false;

function AtivaHitstop(_Tempo = 60){
    if !instance_exists(ObjHitstopManager){
        instance_create_depth(0, 0, 0, ObjHitstopManager);
    }
    
    global.Hitstop = true;
    ObjHitstopManager.TimerHitstop = _Tempo;
}

function GetBackgroundLayers(){
    var _Layers = layer_get_all();
    var _Backgrounds = [];
    
    for(var i = 0; i < array_length(_Layers); i++){
        var _IsBg = layer_background_get_id(_Layers[i]);
        if _IsBg != -1{
            array_push(_Backgrounds, layer_get_name(_Layers[i]));
        }
    }
    
    return _Backgrounds;
}

function StopBackgrounds(_BackgroundList){
    var _BackgroundSpeed = [];
    for(var i = 0; i < array_length(_BackgroundList); i++){
        _BackgroundSpeed[0, i] = layer_get_vspeed(_BackgroundList[i]);
        _BackgroundSpeed[1, i] = layer_get_hspeed(_BackgroundList[i]);
    }
    for(var i = 0; i < array_length(_BackgroundList); i++){
        layer_hspeed(_BackgroundList[i], 0);
        layer_vspeed(_BackgroundList[i], 0);
    }
    
    return _BackgroundSpeed;
}

function ReturnBackgroundSpeed(_BackgroundList, _BackgroundSpeedList){
    for (var i = 0; i < array_length(_BackgroundList); i++){
        layer_vspeed(_BackgroundList[i], _BackgroundSpeedList[0, i]);
        layer_hspeed(_BackgroundList[i], _BackgroundSpeedList[1, i]);
    }
}