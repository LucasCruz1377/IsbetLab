if global.jogo_pausado
{

	draw_set_halign(fa_middle)
	draw_set_font(font_gamepause)
	draw_text(room_width/2,room_height/2 - 120,"JOGO PAUSADO")
	draw_sprite_ext(spr_fundopausa,0,room_width/4,room_height/4,8,10,0,c_white,0.5)

}