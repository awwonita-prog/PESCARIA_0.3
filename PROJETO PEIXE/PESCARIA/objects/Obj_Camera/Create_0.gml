// Pega o ID da câmera ativa atribuída à View 0
cam = view_camera[0];

// Define quantos pixels a câmera se move a cada clique do scroll
scroll_speed = 32; 

// Armazena as posições de destino para criar um movimento suave (opcional)
target_x = camera_get_view_x(cam);
target_y = camera_get_view_y(cam);

