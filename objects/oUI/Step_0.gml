
switch room {


case StartMenuRoom:
	menuFunction();
break;

case HistoryRoom:
	
	alphatexthist = lerp(alphatexthist, alphatexthistfin, .025);
	if (InputPressed(INPUT_VERB.ACCEPT) && alphatexthist >= .98 && !vaiprojogo) {
		if(qualtexthist >= array_length(histTexto)-1) {
			nextRoom(GameRoom);
			vaiprojogo = 1;
		} else {
			alphatexthist = 0;
			qualtexthist++;
			puladedesen--;
			if (puladedesen < 1) {
				oCam.finalposy += 216;
				puladedesen = 2;
			}
		}
	}
	
break;

case GameRoom:
	
	if (!global.comecaojogo) {
		diaalphadelay--;
		if (diaalphadelay <= 0) diaalpha = lerp(diaalpha, 0, .05);
		//if ()
	}
	
	// Aba de pesquisa - computador
	var _camp = point_in_rectangle(mouse_x, mouse_y, 222, 17, 349, 25) && !global.mouseTrancado;
	// Relógio
	var _relg = point_in_circle(mouse_x, mouse_y, 38, 35, 16);
	// Botões da alavanca
	var _bots = point_in_rectangle(mouse_x, mouse_y, 90, 32, 90+7, 32+14) && !global.mouseTrancado;
	
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
	
	if (InputPressed(INPUT_VERB.LUZNEGRA) or (InputPressed(INPUT_VERB.ACCEPT) && cdlAlphaFinal = 1) && diaalpha <= 0.01) {
		abriucdl = 1;
		cdlAlphaFinal = !cdlAlphaFinal;
		global.erros = 0;
		global.mouseTrancado = !global.mouseTrancado;
		if (abriucdl = 1 && cdlAlphaFinal = 0) global.comecaojogo = 1;
	}
	cdlAlpha = lerp(cdlAlpha, cdlAlphaFinal, .2);
	
break;
}