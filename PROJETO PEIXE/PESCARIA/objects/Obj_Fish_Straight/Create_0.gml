event_inherited();
spd = 2;
fish_value = 10;
dir_horizontal = choose(-1, 1);
start_x = x;
travel_range = 150;

fish_init_movement = function() {
    // não precisa recalcular nada, x é atualizado direto no Step
}

fish_init_movement();