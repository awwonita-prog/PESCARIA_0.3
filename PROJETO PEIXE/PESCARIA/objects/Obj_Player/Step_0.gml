//ANDAR

move = -keyboard_check(vk_left)+keyboard_check(vk_right)

hspd = move*spd

//COLISÃO
if place_meeting(x+hspd,y,Obj_block)
{
	while !place_meeting(x+sign(hspd),y,Obj_block)
	{
		x += sign(hspd)
	}
	hspd=0
}

x	+= hspd

//TROCA DE SPRITE / INVERSÃO DA DIREÇÃO DO OBJETO
if(hspd !=0)
{
	sprite_index = Spr_Player_Walk
	image_xscale = sign(hspd)
}
else
{
	sprite_index = Spr_Player_Idle
}
