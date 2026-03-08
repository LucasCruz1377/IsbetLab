draw_self()

if position_meeting(mouse_x,mouse_y,id)
{
	image_blend = merge_colour(image_blend,c_dkgrey,0.3)
}

else
{
	image_blend = merge_colour(image_blend,c_white,0.3)
}

