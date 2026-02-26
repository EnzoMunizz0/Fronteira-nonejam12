function screenshake(_treme = 1) {
    if (!instance_exists(oScreenShake)) instance_create_depth(0, 0, 100, oScreenShake)
    with(oScreenShake) {
        if (_treme > treme) {
            treme = _treme;
        }
    }
    
}