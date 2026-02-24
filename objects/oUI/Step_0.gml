
switch room {


case StartMenuRoom:


	smisel += InputPressed(INPUT_VERB.DOWN) - InputPressed(INPUT_VERB.UP);
	smisel = clamp(smisel, 1, array_length(startmenuitens));


	if (InputPressed(INPUT_VERB.ACCEPT)) {
		show_message("deu ceuto")
	}

		//show_debug_message("Teste aqui do menu: "+string(startmenuitens[0][1]));


break;



}