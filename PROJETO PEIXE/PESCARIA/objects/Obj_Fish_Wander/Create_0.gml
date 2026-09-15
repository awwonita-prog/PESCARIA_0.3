event_inherited();
spd = 1.5;
flee_speed = 3.5;
flee_distance = 80;
fish_value = 20;
change_dir_timer = room_speed * 2;
rotation_speed = 6; // graus por frame — aumente para virar mais rápido
fish_init_movement = function() {
    var _dir = random(360);
    hspeed = lengthdir_x(spd, _dir);
    vspeed = lengthdir_y(spd, _dir);
}

fish_init_movement();