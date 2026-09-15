event_inherited();
spd = 4;
fish_value = 10;
rotation_speed = 6; // graus por frame — aumente para virar mais rápido

fish_init_movement = function() {
    var _dir = random(360);
    hspeed = lengthdir_x(spd, _dir);
    vspeed = lengthdir_y(spd, _dir);
}

fish_init_movement();