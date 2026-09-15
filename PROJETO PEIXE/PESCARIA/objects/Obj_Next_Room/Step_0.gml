//PASSA PARA PROXIMA FASE AO PRESSIONAR ESPAÇO
if (place_meeting(x, y, Obj_Player) && keyboard_check_pressed(vk_space)) {
    room_goto_next();
}
