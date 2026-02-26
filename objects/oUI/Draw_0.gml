
var _centerx = room_width/2;
var _centery = room_height/2;


switch room {


case StartMenuRoom:


	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	for (var i=0; i<array_length(startmenuitens); i++) {
	
		startmenuitens[i].escala = lerp(startmenuitens[i].escala, 1+(smisel == i+1 ? .2 : 0), .25);
	
		draw_text_ext_transformed(
			_centerx, _centery + (i*32),
			startmenuitens[i].nome,
			16, 1000,
			startmenuitens[i].escala*1, startmenuitens[i].escala*1, 0
		);
	
	}


break;

case GameRoom:
	
	draw_sprite_ext(sprSetaRelogio, -1, 38.5, 35, .5, .5, global.tempo/-1, c_white, 1);
	
	var _bots = point_in_rectangle(mouse_x, mouse_y, 90, 32, 90+7, 32+14)
	draw_sprite(sprButoes, botoesidx+(mouse_check_button(mb_left)*2*_bots)*botoesPodeAperta, 90, 32)
	
break;



}


