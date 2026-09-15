// Detecta a rolagem para cima ou para baixo
if (mouse_wheel_up()) {
    target_y -= scroll_speed;
}
if (mouse_wheel_down()) {
    target_y += scroll_speed;
}

// Garante que a câmera não saia dos limites verticais da sala
target_y = clamp(target_y, 0, room_height - camera_get_view_height(cam));

// Interpolação suave (lerp) entre a posição atual e o destino
var current_x = camera_get_view_x(cam);
var current_y = camera_get_view_y(cam);
var new_y = lerp(current_y, target_y, 0.1); // Mude 0.1 para ajustar a suavidade

// Aplica a nova posição à câmera
camera_set_view_pos(cam, current_x, new_y);

// 1. Pega a posição atual da câmera do view_viewport[0]
var _cam = view_camera[0];
var _cam_x = camera_get_view_x(_cam);
var _cam_y = camera_get_view_y(_cam);

