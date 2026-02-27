
gotoOptions = function() {};




//Gameplay
pcTexto = "";
podeDigitar = 0;
barDelay = FPS/2;
barColor = 0;

botoes = 0;
botoesidx = 0;
botoesPodeAperta = 1;

verPPsprite = sprTexBlack;	// PP = Procurado PCU
verNAsprite = sprTexBlack;	// NA = Nacionalidade Aceita
verificacao = function(_name = "") {
	//verPPalpha = 1;
	//verNAalpha = 1;
	
	verPPsprite = sprBGinterrogacao;
	verNAsprite = sprBGinterrogacao;
	
	var _tam = array_length(global.aliens);
	for (var i = 0; i < _tam; i++) {
		//if (i >= _tam) continue;
		if (_name != global.aliens[i].nome) {
			continue;
		}
		verPPsprite = (global.aliens[i].pcu) ? sprBGv : sprBGx;
		verNAsprite = sprBGv;
	}
	
}


//Menu de Opções
inOptions = 0;
optionsPos = 960
bckSize = 1;

gotoOptions = function() {
	show_debug_message(inOptions)
	
	/*
	if (inOptions) {
		if (instance_exists(oCam)) 
	}*/
	inOptions = !inOptions
	if (instance_exists(oCam)) oCam.finalposx = (inOptions) ? optionsPos : 384/2;
	
	show_debug_message(oCam.x)
}


//Menu Inicial
startmenuitens = [
	// A "funcao" deve-se colocar a função que irá executar SEM PARÊNTESES ( );
	// O "fvar" é o valor que você vai colocar na variável local da função...
	// Exemplo: "funcao: show_message, fvar: 123", irá mostrar a mensagem "123" na tela;
	{nome: "Começar", escala: 1, funcao: nextRoom, fvar: GameRoom},
	{nome: "Opções", escala: 1, funcao: gotoOptions, fvar: noone},
	{nome: "Sair", escala: 1, funcao: game_end, fvar: noone} // Não preciso colocar nenhum valor na função "game_end()"
];
// smisel = start menu item selected
smisel = 0;
podeaperta = 1;


menuFunction = function(num) {
	var _itn = startmenuitens[num-1];
	_itn.funcao(_itn.fvar);
};

