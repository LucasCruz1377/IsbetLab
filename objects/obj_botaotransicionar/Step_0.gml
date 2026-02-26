if instance_exists(obj_pauser)
{
	exit
}
if instance_exists(id)
{
	


	if hover and mouse_check_button_pressed(mb_left)
	{
		var inst = instance_create_depth(0,0,-999,obj_transicionar)
		var pause = instance_create_depth(0,0,0,obj_pauser)
		inst.rm_target = rm_target

	}
}