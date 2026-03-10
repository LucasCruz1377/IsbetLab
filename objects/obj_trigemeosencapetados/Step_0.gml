if instance_exists(obj_pauser) or global.jogo_pausado
{
	image_speed = 0
	exit
}
image_speed = 1
timercomecarfase --

if timercomecarfase < 0 
{
	atirar()
}