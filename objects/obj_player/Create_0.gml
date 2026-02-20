hspd = 0 
vspd = 0 
grv = .3
spd = 5
jumpspd = - 5
hp_max = 3
hp = hp_max
invencivel = false

function player()
{
	var left,right,jump
	left = keyboard_check(ord("A"))
	right = keyboard_check(ord("D"))
	jump = keyboard_check_pressed(vk_space)
	
	hspd = (right - left) * spd
	vspd += grv
	
	if place_meeting(x+hspd,y,obj_colisao)
	{
		while !place_meeting(x+sign(hspd),y,obj_colisao)
		{
		x += sign(hspd)
		}
		hspd = 0 
	}
	
		if place_meeting(x,y + vspd,obj_colisao)
	{
		while !place_meeting(x,y + sign(vspd),obj_colisao)
		{
		y += sign(vspd)
		}
		vspd = 0 
	}
	x += hspd 
	y += vspd
}