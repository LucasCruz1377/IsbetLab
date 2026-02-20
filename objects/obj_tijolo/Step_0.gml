timer-- 
vspd += grv
y += vspd

if place_meeting(x,y+vspd,obj_colisao)
{
	instance_destroy()
}
