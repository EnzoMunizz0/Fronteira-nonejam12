

function nextRoom(_room = StartMenuRoom, _res = 1) {
	room_goto(_room);
	surface_resize(application_surface, 256*1, 144*1);
	
}

function exitGame() {
	game_end();
}
