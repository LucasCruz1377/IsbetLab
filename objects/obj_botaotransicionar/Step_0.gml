if instance_exists(obj_pauser)
{
	exit
}
if instance_exists(id)
{
	if position_meeting(mouse_x,mouse_y,id) and mouse_check_button_pressed(mb_left)
	{
		var inst = instance_create_depth(0,0,-999,obj_transicionar)
		var pause = instance_create_depth(0,0,0,obj_pauser)
		inst.rm_target = rm_target
	}
}