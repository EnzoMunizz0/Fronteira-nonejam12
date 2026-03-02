
menuFunction = 0;


//Gameplay
botoes = 0; // Botões alavanca
botoesidx = 0;
botoesPodeAperta = 1;

pcTexto = "";
podeDigitar = 0;
barDelay = FPS/2;
barColor = 0;

verPPsprite = sprTexBlack;	// PP = Procurado PCU
verNAsprite = sprTexBlack;	// NA = Nacionalidade Aceita
verificacao = function(_name = "") { // Verificação de nomes existentes - computador
	verPPsprite = sprBGinterrogacao;
	verNAsprite = sprBGinterrogacao;
	
	if (pcTexto == "") {
		verPPsprite = sprTexBlack;
		verNAsprite = sprTexBlack;
	}
	
	var _tam = array_length(global.aliens);
	for (var i = 0; i < _tam; i++) {
		if (string_upper(_name) != string_upper(global.aliens[i].ip)) {
			continue;
		}
		verPPsprite = (global.aliens[i].pcu) ? sprBGv : sprBGx;
		verNAsprite = sprBGv;
	}
	
}


//Menu de história
histTexto = [
	"A confederação intergaláctica foi\nformada depois de muito tempo.",
	"Representantes de toda a Via Láctea\nentraram em acordo quanto às\nviagens interplanetárias.",
	"Regras foram criadas e desde então seres\nde toda a galáxia podem viajar para outros \nplanetas em pouco tempo com portos espaciais.",
	"Com isso, também surgem seres que\npassam para outros planetas ilegalmente,\ncom documentos ou passaportes irregulares.",
	"O seu trabalho no planeta Terra\nserá analisar cada viajante e...",
	"deportar aqueles que estiverem quebrando as\nregras da AGVI\n(Agência Galáctica de Viagens Interplanetárias)."
];
alphatexthist = 0
alphatexthistfin = 1;
qualtexthist = 0;
puladedesen = 2;
vaiprojogo = 0;


//Menu Inicial
optionsPos = 960	// Options Position
defaultCamPos = [384/2, 540]
bckSize = 1;		// Tamanho do botão de voltar
splashBGAlpha = 1;
textsplash = "Criado por: EnzoMunizz0";
textsplashAlpha = 0;
jafoisplash = 0;

menuSplash = function() {
	textsplashAlpha = lerp(textsplashAlpha, 1, 0.1);
}

menuComeco = function() {
	textsplashAlpha = 0;
	splashBGAlpha = 0;
	smisel += InputPressed(INPUT_VERB.DOWN) - InputPressed(INPUT_VERB.UP);
	smisel = clamp(smisel, 1, array_length(startmenuitens));
	
	if (InputPressed(INPUT_VERB.ACCEPT)) menuFunction = startmenuitens[smisel-1].menu;
}

menuOpcoes = function() {
	if (instance_exists(oCam)) oCam.finalposx = optionsPos;
	
	var _ctrOp = 384*2;
	var _bck = point_in_rectangle(mouse_x, mouse_y, _ctrOp+12, 13+432, _ctrOp+36, 19+432);
	//bckSize = lerp(bckSize, 1+(_bck*.1), .25);
	if (_bck) global.cursorForma = "Point";
	if ((mouse_check_button_pressed(mb_left) && _bck) or InputPressed(INPUT_VERB.CANCEL)) {
		smisel = 2;
		if (instance_exists(oCam)) oCam.finalposx = defaultCamPos[0];
		menuFunction = menuComeco;
	}
}

menuLoadGame = function() {
	if (instance_exists(oCam)) oCam.finalposy = 108;
	
	smisel += InputPressed(INPUT_VERB.DOWN) - InputPressed(INPUT_VERB.UP);
	smisel = clamp(smisel, 1, 5);
	
	var _bck = point_in_rectangle(mouse_x, mouse_y, 11, 12, 35, 18);
	//bckSize = lerp(bckSize, 1+(_bck*.1), .25);
	if (_bck) global.cursorForma = "Point";
	if ((mouse_check_button_pressed(mb_left) && _bck) or InputPressed(INPUT_VERB.CANCEL)) {
		smisel = 1;
		if (instance_exists(oCam)) oCam.finalposy = defaultCamPos[1];
		menuFunction = menuComeco;
	}
	if (InputPressed(INPUT_VERB.ACCEPT)) menuFunction = menuEntrandoJogo;
	
}
menuEntrandoJogo = function() {
	nextRoom(HistoryRoom);
}
menuSair = function() {
	game_end();
}


startmenuitens = [
	// A "funcao" deve-se colocar a função que irá executar SEM PARÊNTESES ( );
	{nome: "Começar", menu: menuLoadGame, escala: 1},
	{nome: "Opções", menu: menuOpcoes, escala: 1},
	{nome: "Sair", menu: menuSair, escala: 1}
];
// smisel = start menu item selected
smisel = 0;
podeaperta = 1;

menuFunction = menuSplash;

