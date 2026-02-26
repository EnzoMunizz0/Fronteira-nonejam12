
switch room {


case StartMenuRoom:

	
	smisel += InputPressed(INPUT_VERB.DOWN) - InputPressed(INPUT_VERB.UP);
	smisel = clamp(smisel, 1, array_length(startmenuitens));


	if (InputPressed(INPUT_VERB.ACCEPT)) {
		menuFunction(smisel);
	}


break;


case GameRoom:
	var _camp = point_in_rectangle(mouse_x, mouse_y, 222, 17, 349, 25);
	var _relg = point_in_circle(mouse_x, mouse_y, 38, 35, 16)
	var _bots = point_in_rectangle(mouse_x, mouse_y, 90, 32, 90+7, 32+14)
	if (_camp) {
		//window_set_cursor(cr_beam);
		//global.cursorForma = "beam";
		global.cursorForma = "Beam";
		if (mouse_check_button_pressed(mb_left)) {
			if (!podeDigitar) keyboard_string = pcTexto;
			podeDigitar = 1;
		}
	}
	if (_relg) global.cursorForma = "Time";
	botoesidx = 0;
	if (_bots) {
		global.cursorForma = "Point";
		botoesidx = (mouse_y<=38) ? 1 : 2;
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
	}
	
	barDelay--;
	barDelay = clamp(barDelay, 0, 100);
	global.tempo+=.2;
	
break;


}