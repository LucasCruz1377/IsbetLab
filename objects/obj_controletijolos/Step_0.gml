if instance_exists(obj_pauser) or global.jogo_pausado
{
	exit
}

if ativado and room == rm_faseobra
{
	timer -- 
}

if timer <= 0 
{
	timer = random_range(0,20)
	instance_create_depth(random_range(0,room_width),0,0,obj_tijolo)
}
