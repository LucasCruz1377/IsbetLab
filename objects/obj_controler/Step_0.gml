if keyboard_check_pressed(vk_escape)
{
	global.jogo_pausado = !global.jogo_pausado
}

if global.jogo_pausado
{
	if !instance_exists(obj_botaosair) and !instance_exists(obj_botaoresume)
	{
		var sair = instance_create_depth(room_width/2,room_height / 2 + 100,depth,obj_botaosair)
		var resume = instance_create_depth(room_width/2,room_height / 2 + 200,depth,obj_botaoresume)
	}
}
else 
{
	instance_destroy(obj_botaoresume)
	instance_destroy(obj_botaosair)
}