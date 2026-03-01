
var _centerx = 384/2;
var _centery = (216/2)+432;

var _centerOp = 384*2


switch room {


case StartMenuRoom:

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_colour(#E0D9D9);
	
	//MENU DO COMEÇO
	for (var i=0; i<array_length(startmenuitens); i++) {
	
		startmenuitens[i].escala = lerp(startmenuitens[i].escala, .8+(smisel == i+1 ? .2 : 0), .25);
		
		
		draw_set_colour(merge_colour(#543246, #E0D9D9, i+1 == smisel));
		draw_text_ext_transformed(
			_centerx, _centery + (i*32),
			startmenuitens[i].nome,
			16, 1000,
			startmenuitens[i].escala*1, startmenuitens[i].escala*1, 0
		);
	
	}
	
	//MENU DE LOAD GAME
	
	var _bck = point_in_rectangle(mouse_x, mouse_y, 11, 12, 35, 18)
	//draw_rectangle(11, 12, 35, 18, 1);
	//draw_set_alpha(.8+(!_bck*.2))
	draw_set_colour(merge_colour(#E0D9D9, #DDCAC3, _bck));
	draw_text_transformed(
		24, 15,
		"Back", 
		.5*(bckSize), .5*bckSize, 0
	)
	
	for (var i=0; i<5; i++) {
	
		//startmenuitens[i].escala = lerp(startmenuitens[i].escala, 1+(smisel == i+1 ? .2 : 0), .25);
		
		
		//draw_set_colour(merge_colour(#DDCAC3, #E0D9D9, i+1 == smisel));
		draw_set_colour(merge_colour(#543246, #E0D9D9, i+1 == smisel));
		draw_text_ext_transformed(
			_centerx, 30 + (i*37),
			"Novo jogo",
			16, 1000,
			1, 1, 0
		);
	
	}
	
	//MENU DE OPÇÕES
	
	var _bck = point_in_rectangle(mouse_x, mouse_y, 12+_centerOp, 13+432, 36+_centerOp, 19+432);
	//draw_rectangle(11, 12, 35, 18, 1);
	//draw_set_alpha(.8+(!_bck*.2))
	draw_set_colour(merge_colour(#E0D9D9, #DDCAC3, _bck));
	draw_text_transformed(
		_centerOp + 24, 15+432,
		"Back", 
		.5*(bckSize), .5*bckSize, 0
	)
	//draw_set_alpha(1)
	draw_set_colour(#E0D9D9);
	
	draw_text_transformed(
		_centerOp + 200, 200+432,
		"X: "+string(mouse_x)+"  - Y: "+string(mouse_y), 
		.5, .5, 0
	)
	
	draw_set_colour(c_white)


break;

case GameRoom:
	
	draw_sprite_ext(sprSetaRelogio, -1, 38.5, 35, .5, .5, global.tempo/-1, c_white, 1);
	
	var _bots = point_in_rectangle(mouse_x, mouse_y, 90, 32, 90+7, 32+14) && !global.mouseTrancado;
	draw_sprite(sprButoes, botoesidx+(mouse_check_button(mb_left)*2*_bots)*botoesPodeAperta, 90, 32)
	
	draw_sprite_ext(verPPsprite, -1, 279, 36, 1, 1, 0, c_white, 1);
	draw_sprite_ext(verNAsprite, -1, 291, 51, 1, 1, 0, c_white, 1);
	
break;

case OptionsMenuRoom:
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_colour(#E0D9D9);
	
	var _bck = point_in_rectangle(mouse_x, mouse_y, 11, 12, 35, 18)
	//draw_rectangle(11, 12, 35, 18, 1);
	//draw_set_alpha(.8+(!_bck*.2))
	draw_set_colour(merge_colour(#E0D9D9, #DDCAC3, _bck));
	draw_text_transformed(
		24, 15,
		"Back", 
		.5*(bckSize), .5*bckSize, 0
	)
	//draw_set_alpha(1)
	draw_set_colour(#E0D9D9);
	
	draw_text_transformed(
		200, 200,
		"X: "+string(mouse_x)+"  - Y: "+string(mouse_y), 
		.5, .5, 0
	)
	draw_set_colour(c_white)
	
break;



}


