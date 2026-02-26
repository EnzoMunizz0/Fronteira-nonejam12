

switch room {


case GameRoom:
	

	var _camp = point_in_rectangle(mouse_x, mouse_y, 222, 17, 349, 25);
	//draw_sprite_ext(sprCampoDigitacao, -1, room_width, 0, 1, 1, 0, #DDCAC3, .5 * _camp)
	var _col = merge_colour(#E0D9D9, #DDCAC3, _camp)
	draw_rectangle_colour(222, 17, 349, 25, _col, _col, _col, _col, 0)

	draw_set_halign(fa_left);
	draw_set_valign(fa_middle)
	draw_text_ext_transformed_colour(
		224, 18, 
		pcTexto, 
		10, 1000000, 
		.5, .5, 0, 
		#1A080E, #1A080E, #1A080E, #1A080E, 
		1
	);
	var _finalText = [223+(6*string_length(pcTexto))+1, 18]
	draw_set_colour(merge_colour(#E0D9D9, #1A080E, podeDigitar * barColor))
	draw_rectangle(
		_finalText[0], _finalText[1], 
		_finalText[0]+1, _finalText[1]+6, 
		0
	)

break;

}
