draw_text(20, 20, "Pontuação: " + string(score));

if (fishing && instance_exists(current_fish)) {
    var _bx = 300, _by = 20, _bw = 200, _bh = 20;
    draw_rectangle_color(_bx, _by, _bx+_bw, _by+_bh, c_gray, c_gray, c_gray, c_gray, false);
    draw_rectangle_color(_bx, _by, _bx + _bw*(fishing_bar/bar_max), _by+_bh, c_white, c_white, c_white, c_white, false);
    draw_rectangle_color(_bx, _by, _bx+_bw, _by+_bh, c_white, c_white, c_white, c_white, true);
}