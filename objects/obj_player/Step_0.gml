
if instance_exists(obj_pauser)
{
	exit
}
player()

blink_timer--;

if invencivel
{
if (blink_timer <= 0) {
    image_alpha = 1 - image_alpha; // alterna entre 0 e 1
    blink_timer = blink_time;
	}
}
else
{
image_alpha = 1
}


if room == Level_obra and hp <= 0 
{
	var inst = instance_create_depth(0,0,-999,obj_transicionar)
	var pause =  instance_create_depth(0,0,0,obj_pauser)
	inst.rm_target = Level_Select
	inst.x_tg = ""
	inst.y_tg = ""
} 