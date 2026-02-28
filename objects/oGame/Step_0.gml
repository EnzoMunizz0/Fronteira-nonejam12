

stepOptions();

step_musica();


if (inTrasicao) {
	transicaoAlpha += .02;
	if (transicaoAlpha >= 1) {
		nextRoom(transIf, 0);
	}
} else {
	transicaoAlpha = lerp(transicaoAlpha, inTrasicao, .01);
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





