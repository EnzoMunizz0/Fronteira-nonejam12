
switch room {


case StartMenuRoom:

	if (podeaperta) {
		smisel += InputPressed(INPUT_VERB.DOWN) - InputPressed(INPUT_VERB.UP);
		smisel = clamp(smisel, 1, array_length(startmenuitens));

	
		if (InputPressed(INPUT_VERB.ACCEPT)) {
			menuFunction(smisel);
			/*if (smisel = 1) */podeaperta = 0;
		}
	}
	
	var _ctrOp = 384*2;
	var _bck = point_in_rectangle(mouse_x, mouse_y, _ctrOp+11, 12, _ctrOp+35, 18);
	bckSize = lerp(bckSize, 1+(_bck*.1), .25);
	if (_bck) {
		global.cursorForma = "Point";
		if (mouse_check_button_pressed(mb_left)) {
			gotoOptions();
			podeaperta = 1;
		}
	}


break;


case GameRoom:
	// Aba de pesquisa - computador
	var _camp = point_in_rectangle(mouse_x, mouse_y, 222, 17, 349, 25);
	// Relógio
	var _relg = point_in_circle(mouse_x, mouse_y, 38, 35, 16)
	// Botões da alavanca
	var _bots = point_in_rectangle(mouse_x, mouse_y, 90, 32, 90+7, 32+14)
	
	if (_relg) global.cursorForma = "Time";
	botoesidx = 0;
	if (_bots) {
		global.cursorForma = "Point";
		botoesidx = (mouse_y<=38) ? 1 : 2;
	}
	
	// COMPUTADOR - Pesquisa de nomes
	if (mouse_check_button_pressed(mb_left) || InputPressed(INPUT_VERB.ENTER)) podeDigitar = 0;
	if (_camp) {
		//window_set_cursor(cr_beam);
		//global.cursorForma = "beam";
		global.cursorForma = "Beam";
		if (mouse_check_button_pressed(mb_left)) {
			if (!podeDigitar) keyboard_string = pcTexto;
			podeDigitar = 1;
		}
	}
	if (podeDigitar) {
		pcTexto = keyboard_string;
		if (barDelay <= 0) {
			barDelay = FPS/2;
			barColor = !barColor;
		}
		if (string_length(pcTexto) > 20) {
			keyboard_string = string_copy(pcTexto, 1, 20);
			screenshake(3);
		}
	} else {
		verificacao(pcTexto);
	}
	
	barDelay--;
	barDelay = clamp(barDelay, 0, 100);
	global.tempo+=.2;
	
break;

case OptionsMenuRoom:
	
	var _bck = point_in_rectangle(mouse_x, mouse_y, 11, 12, 35, 18)
	bckSize = lerp(bckSize, 1+(_bck*.1), .25);
	if (_bck) {
		global.cursorForma = "Point";
		if (mouse_check_button_pressed(mb_left)) nextRoom(StartMenuRoom);
	}
	
	
break;
}