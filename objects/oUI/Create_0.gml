

startmenuitens = [
	{nome: "Começar", escala: 1, funcao: noone},
	{nome: "Opções", escala: 1, funcao: noone},
	{nome: "Sair", escala: 1, funcao: noone} // Não posso só colocar game_end() pq o jogo fecha na hora kk
];
// smisel = start menu item selected
smisel = 0;


menuFunction = function() {
	show_message("Teste deu certo")
	if (smisel == array_length(startmenuitens)) game_end();
};


