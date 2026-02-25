

function nextRoom(_room = StartMenuRoom, _res = 1.5) {
	room_goto(_room);
	surface_resize(application_surface, 256*_res, 144*_res);
	
}

function exitGame() {
	game_end();
}
