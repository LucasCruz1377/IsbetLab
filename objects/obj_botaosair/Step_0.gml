if position_meeting(mouse_x,mouse_y,id)
{
	if mouse_check_button(mb_left)
	{
		var warp = instance_create_depth(0,0,-999,obj_transicionar)
		warp.rm_target = rm_telastart
	}
}