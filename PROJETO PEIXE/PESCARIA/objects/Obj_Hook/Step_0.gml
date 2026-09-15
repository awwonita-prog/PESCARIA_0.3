//SEGUE O CURSOR COM UM DELAY 
x = lerp(x, mouse_x, spd)
y = lerp(y, mouse_y, spd)

//ROTACIONA O OBJETO
image_angle = point_direction(x, y, mouse_x, mouse_y)

