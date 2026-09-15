if (fishing) {
    if (!instance_exists(current_fish)) {
        fishing = false;
        current_fish = noone;
        exit;
    }

    fishing_bar -= current_fish.difficulty_decay;

    if (mouse_check_button_pressed(mb_left)) {
        fishing_bar += current_fish.difficulty_gain;
    }

    fishing_bar = clamp(fishing_bar, 0, bar_max);

    if (fishing_bar >= bar_max) {
        // pescaria bem-sucedida
        score += current_fish.fish_value;
        instance_destroy(current_fish);
        fishing = false;
        current_fish = noone;
    } else if (fishing_bar <= 0) {
        // peixe escapou
        current_fish.being_caught = false;
        current_fish.fish_init_movement(); // reinicia o movimento
        fishing = false;
        current_fish = noone;
    }
}