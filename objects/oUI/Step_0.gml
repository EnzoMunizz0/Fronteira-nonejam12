
switch room {


case StartMenuRoom:


	smisel += InputPressed(INPUT_VERB.DOWN) - InputPressed(INPUT_VERB.UP);
	smisel = clamp(smisel, 1, array_length(startmenuitens));


	if (InputPressed(INPUT_VERB.ACCEPT)) {
		menuFunction(smisel);
	}


break;



}