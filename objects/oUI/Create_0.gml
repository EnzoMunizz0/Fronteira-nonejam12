

//Menu Inicial
startmenuitens = [
	// A "funcao" deve-se colocar a função que irá executar SEM PARÊNTESES ( );
	// O "fvar" é o valor que você vai colocar na variável local da função...
	// Exemplo: "funcao: show_message, fvar: 123", irá mostrar a mensagem "123" na tela;
	{nome: "Começar", escala: 1, funcao: nextRoom, fvar: GameRoom},
	{nome: "Opções", escala: 1, funcao: nextRoom, fvar: OptionsMenuRoom},
	{nome: "Sair", escala: 1, funcao: game_end, fvar: noone} // Não preciso colocar nenhum valor na função "game_end()"
];
// smisel = start menu item selected
smisel = 0;


menuFunction = function(num) {
	var _itn = startmenuitens[num-1];
	_itn.funcao(_itn.fvar);
};


//Gameplay
pcTexto = "";
podeDigitar = 0;
barDelay = FPS/2;
barColor = 0;

botoes = 0;
botoesidx = 0;
botoesPodeAperta = 1;


//Menu de Opções
bckSize = 1;


