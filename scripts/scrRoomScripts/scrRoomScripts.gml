

function nextRoom(_room = StartMenuRoom, _inTransition = 1, _res = 1) {
	//if (!layer_exists("Transicao")) layer_create(-10000, "Transicao");
	oGame.inTrasicao = !oGame.inTrasicao;
	 if (!_inTransition) {
		room_goto(_room);
		surface_resize(application_surface, 384, 216);
		//oGame.transicaoAlpha = 1;
	 }
	oGame.transIf = _room;

	
}

function exitGame() {
	game_end();
}
