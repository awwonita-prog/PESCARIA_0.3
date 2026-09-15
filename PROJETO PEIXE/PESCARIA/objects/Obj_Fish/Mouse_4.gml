if (!being_caught && !obj_game_controller.fishing) {
    being_caught = true;
    obj_game_controller.current_fish = id;
    obj_game_controller.fishing = true;
    obj_game_controller.fishing_bar = 0;
}