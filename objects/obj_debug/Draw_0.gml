if mododebug
{
	draw_set_colour(c_black)
	if instance_exists(obj_player)
	{
	draw_set_colour(c_black)
	draw_set_alpha(1)
	draw_text(obj_player.x,obj_player.y + 50,"alpha:  "+string(obj_player.image_alpha))
	}
	draw_text(xx,20,"Current_time:  " + string(current_time))
}