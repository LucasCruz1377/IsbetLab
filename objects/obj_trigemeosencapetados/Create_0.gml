vel_projeteis = 2
timercomecarfase = 120
timer = 90
projeteis = [obj_melancia,obj_laranja]
function atirar()
{
	var projetil = random_range(0,array_length(projeteis))
	timer --
	if timer <= 0 
	{
	show_debug_message("fruta_atirada")
	var inst = instance_create_depth(x,y,depth,projeteis[projetil])
	timer = 3 * 60
	}
}