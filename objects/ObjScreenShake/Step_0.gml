if Magnitude > 0{
    var _RandomX = random_range(-Magnitude, Magnitude);
    var _RandomY = random_range(-Magnitude, Magnitude);
    
    view_set_xport(view_current, _RandomX);
    view_set_yport(view_current, _RandomY);
}

if Magnitude > .1{
    Magnitude = lerp(Magnitude, 0, .1);    
}
else{
    Magnitude = 0;
    view_set_xport(view_current, 0);
    view_set_yport(view_current, 0);
}