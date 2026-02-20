if instance_exists(obj_pauser)
{
	exit
}
player()

if room == Level_obra and hp <= 0 
{
	var inst = instance_create_depth(0,0,-999,obj_transicionar)
	var pause =  instance_create_depth(0,0,0,obj_pauser)
	inst.rm_target = Level_Select
	inst.x_tg = ""
	inst.y_tg = ""
} 