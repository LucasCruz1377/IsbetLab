function abrir()
{
	if sprite_index = spr_carteirafechada
	{
		if mouse_check_button(mb_left) and position_meeting(mouse_x,mouse_y,id)
		{
		sprite_index = spr_carteirabrindo
		}
	}
}

function parardeabrir()
{
	if sprite_index == spr_carteirabrindo and (image_index > image_number -1 )
	{
	sprite_index = spr_carteiraberta
	}
}

