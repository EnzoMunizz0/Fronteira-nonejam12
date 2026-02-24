
var _centerx = 256/2;
var _centery = 144/2;


switch room {


case StartMenuRoom:


	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	for (var i=0; i<array_length(startmenuitens); i++) {
	
		startmenuitens[i].escala = lerp(startmenuitens[i].escala, 1+(smisel == i+1 ? .2 : 0), .25);
	
		draw_text_ext_transformed(
			_centerx, _centery + (i*16),
			startmenuitens[i].nome,
			16, 1000,
			startmenuitens[i].escala*.4, startmenuitens[i].escala*.4, 0
		);
	
	}


break;



}


