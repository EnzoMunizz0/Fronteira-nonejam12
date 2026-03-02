

switch room {

case StartMenuRoom:
	
	draw_set_alpha(splashBGAlpha);
	draw_rectangle_colour(-10, -10, room_width, room_height, #100F19, #100F19, #100F19, #100F19, 0);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle)
	draw_set_alpha(textsplashAlpha);
	draw_set_colour(#E0D9D9);
	draw_text_ext_transformed(384/2, 206/2, textsplash, 24, 10000, 1, 1, 0);
	
	draw_set_colour(c_white);
	draw_set_alpha(1);
	
break;

case GameRoom:
	

	var _camp = point_in_rectangle(mouse_x, mouse_y, 222, 17, 349, 25) && !global.mouseTrancado;
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
	draw_set_colour(merge_colour(merge_colour(#E0D9D9, #DDCAC3, _camp), #1A080E, podeDigitar * barColor))
	draw_rectangle(
		_finalText[0], _finalText[1], 
		_finalText[0]+1, _finalText[1]+6, 
		0
	)
	
	draw_set_halign(fa_center);
	draw_text(144/2, 36, string(clamp(global.viajantesRestantes, 0, (global.dia <= 3) ? global.levels[global.dia-1].vmax : 5))+"/5");
	
	draw_set_alpha(cdlAlpha);
	draw_sprite(sprCadernoDeLeis, -1, 0, 0);
	draw_set_alpha(1);
	
	draw_set_font(fPixelDoc);
	draw_set_halign(fa_center);
	draw_set_valign(fa_top);
	draw_set_alpha(!abriucdl);
	draw_set_colour(#1A080E);
	draw_text_ext_transformed(device_mouse_x_to_gui(0)+.5, device_mouse_y_to_gui(0)+10.5, "Aperte 'F' para abrir o\nCaderno de Leis", 10, 100000, .6, .6, 0);
	draw_set_colour(#E0D9D9);
	draw_text_ext_transformed(device_mouse_x_to_gui(0), device_mouse_y_to_gui(0)+10, "Aperte 'F' para abrir o\nCaderno de Leis", 10, 100000, .6, .6, 0);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	draw_set_valign(fa_middle);
	draw_set_font(fPixelRegular);
	
	
	draw_set_colour(#100F19)
	draw_set_alpha(diaalpha)
	draw_rectangle(-10, -10, room_width+10, room_height+10, 0)
	
	draw_set_colour(#E0D9D9);
	draw_text(384/2, 216/2, "Dia: "+string(global.dia));
	
	draw_set_colour(#DDCAC3);
	draw_set_alpha(diaalpha*(global.dia != 1))
	draw_text_transformed(384/2, (216/2)+24, "Erros: "+string(global.erros), .6, .6, 0);

	draw_set_colour(c_white)
	draw_set_alpha(1)

break;

}
