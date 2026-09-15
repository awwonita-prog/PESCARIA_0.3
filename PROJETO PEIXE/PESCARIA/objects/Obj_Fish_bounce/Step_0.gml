if (being_caught) {
    hspeed = 0;
    vspeed = 0;
    exit;
}

if (x <= 0 || x >= room_width)  hspeed = -hspeed;
if (y <= 0 || y >= room_height) vspeed = -vspeed;
x = clamp(x, 0, room_width);
y = clamp(y, 0, room_height);

var _angle_diff = angle_difference(direction, image_angle);
image_angle += clamp(_angle_diff, -rotation_speed, rotation_speed);