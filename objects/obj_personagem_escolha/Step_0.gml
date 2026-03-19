if instance_exists(obj_pauser)
{
exit
}

hover = position_meeting(mouse_x,mouse_y,id)

if hover
{
	y = lerp(y, y_final,0.3)
	image_xscale = lerp(image_xscale,escala * 1.3,0.5)
	image_yscale = lerp(image_yscale,escala * 1.3,0.5)
}
else
{
	y = lerp(y, y_init,0.3)
	image_xscale = lerp(image_xscale,escala,0.5)
	image_yscale = lerp(image_yscale,escala,0.5)
}




switch ID
{
	case 0:
	{
		sprite_index = spr_personagemmasc_idle
		break
	}
	case 1:
	{
		sprite_index = spr_personagemfem_idle
		break
	}
}

if hover and mouse_check_button_pressed(mb_left)
{
	global.genero = id.ID
	var inst = instance_create_depth(0,0,-999,obj_transicionar)
	var pause = instance_create_depth(0,0,0,obj_pauser)
	inst.rm_target = rm_telastart
}
