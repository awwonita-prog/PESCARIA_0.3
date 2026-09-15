if (being_caught) exit;

x += spd * dir_horizontal;
image_xscale = dir_horizontal;

if (abs(x - start_x) >= travel_range) dir_horizontal *= -1;