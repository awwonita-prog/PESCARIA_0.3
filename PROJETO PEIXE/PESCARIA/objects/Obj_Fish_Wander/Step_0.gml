if (being_caught) {
    hspeed = 0;
    vspeed = 0;
    exit;
}

if (instance_exists(Obj_Hook)) {
    var _dist = point_distance(x, y, Obj_Hook.x, Obj_Hook.y);

    if (_dist < flee_distance) {
        var _flee_dir = point_direction(Obj_Hook.x, Obj_Hook.y, x, y);
        hspeed = lengthdir_x(flee_speed, _flee_dir);
        vspeed = lengthdir_y(flee_speed, _flee_dir);
        change_dir_timer = room_speed;
    } else {
        change_dir_timer--;
        if (change_dir_timer <= 0) {
            var _new_dir = random(360);
            hspeed = lengthdir_x(spd, _new_dir);
            vspeed = lengthdir_y(spd, _new_dir);
            change_dir_timer = room_speed * (1 + random(2));
        }
    }
}

if (x <= 0 || x >= room_width)  hspeed = -hspeed;
if (y <= 0 || y >= room_height) vspeed = -vspeed;
x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);

var _angle_diff = angle_difference(direction, image_angle);
image_angle += clamp(_angle_diff, -rotation_speed, rotation_speed);