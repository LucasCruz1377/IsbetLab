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

function criar_botoes()
{
if !instance_exists(obj_botaotransicionar) and sprite_index = spr_carteiraberta
{
	var botao_start = instance_create_depth(850,140,obj_menucarteira.depth-1,obj_botaotransicionar)
	botao_start.rm_target = rm_fasetijolo
	botao_start.image_xscale = 380
	botao_start.image_yscale = 147
}
}