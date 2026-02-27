

stepOptions();

if (global.musica != 0) {
	if (!global.temMus) {
		audio_play_sound(
			global.musica.mus, 
			10, 
			global.musica.loop, 
			global.musica.vol * (global.volGeral * global.volMusica)
		)
	}
	
	global.temMus = 1;
}


if (inTrasicao) {
	transicaoAlpha += .05;
	if (transicaoAlpha >= 1) {
		nextRoom(transIf, 0);
	}
} else {
	transicaoAlpha = lerp(transicaoAlpha, inTrasicao, .1);
}

/*if (instance_exists(oDocument)) {
	var _doc = position_meeting(mouse_x, mouse_y, oDocument);
	if (_doc) {
		with _doc {
			if (global.docsel == 0 && selecionado = 0) selecionado = 1;
		}
		global.docsel = 1;
	} else {
		global.docsel = 0;
		oDocument.selecionado = 0;
	}
}*/





