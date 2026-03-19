h_spd = 0 
vspd = 0
hspd = 0
grv = .3
spd = 5
jumpspd = - 9
hp_max = 3
hp = hp_max
invencivel = false
canjump = true
scale = 1.25
image_xscale = scale
image_yscale = scale
data = new masc()
gpu_set_tex_filter(false)

switch global.genero
{
	case 0:
	{
		data = new masc()
		break
	}
	case 1:
	{
		data = new fem()
		break
	}
}
	sprite_index = data.idle
function player()
{	
	
	
	var left,right,jump,_hspd
	left = keyboard_check(ord("A"))
	right = keyboard_check(ord("D"))
	jump = keyboard_check_pressed(vk_space)
	_hspd = (right - left) * spd
	vspd += grv
	
	if canjump and jump
	{
		vspd = jumpspd
		canjump = false
	}
	if place_meeting(x+_hspd,y,obj_colisao)
	{
		while !place_meeting(x+sign(_hspd),y,obj_colisao)
		{
		x += sign(_hspd)
		}
		_hspd = 0 
	}
		if place_meeting(x,y + vspd,obj_colisao)
	{
		while !place_meeting(x,y + sign(vspd),obj_colisao)
		{
		y += sign(vspd)
		}
		canjump = true
		vspd = 0 
	}
	hspd = lerp(hspd,_hspd,0.3)
	x += hspd 
	y += vspd
	
	if !place_meeting(x,y+1,obj_colisao)
	{
	sprite_index = data.jump
	}
	else if hspd != 0 
	{
	if hspd > 0.1{ image_xscale = 1}
	else if hspd < -0.1{ image_xscale = -1}
	sprite_index = data.run
	}
	else
	{
		sprite_index = data.idle
	}
}