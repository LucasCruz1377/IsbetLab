if instance_exists(obj_pauser) or global.jogo_pausado
{
	image_speed = 0
	exit
}
image_speed = 1
player()
if invencivel
{
    image_alpha = abs(sin(current_time/50))
}
else if hp == 0 
{
	image_alpha = 0
}
else
{
image_alpha = 1
}
if !instance_exists(obj_transicionar) && hp <= 0 
{
	var inst = instance_create_depth(0,0,-999,obj_transicionar)
	var pause =  instance_create_depth(0,0,0,obj_pauser)
	inst.rm_target = rm_telastart
} 