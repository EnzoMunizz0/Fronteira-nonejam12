
global.pause = 0;


// VARIÁVEIS DE ÁUDIO
global.volGeral = .5;
global.volMusica = 1;
global.volFX = 1;

global.telaRes = [1280, 720];
global.baixaRes = 0;
global.showFPS = 0;
global.hasScreenshake = 0;
global.pixelPerfect = 0;



enum options_list {
	Audio,
	Graficos,
	Janela,
	Controles
}

global.Opcoes = {
	/*
	Exemplo:
	Opção: [
		nome = Nome da alternativa (dentro da opção)
		val = Valor da alternativa
		tipo = Tipo de alteração para o valor no menu (Exemplo: Sliders, Inputs...)
		minmax = Valor mínimo [0] e Valor máximo [1]  /  Alternativas (quando pode escolher)
	]
	*/
	Audio: [ 
		{
			nome: "Volume Geral", 
			val: 50, 
			tipo: "Slider", 
			minmax: [0, 102] // Definitivamente merece ganhar o GOTY de acessibilidade:
							 //	O VOLUME DO MEU JOGO VAI ATÉ 102%!!!!!!!!!!
							 // (Obs: sim, eu sou um gênio... Antes 101%, agora 102%.).
		},
		{
			nome: "Volume da Música", 
			val: 100, 
			tipo: "Slider", 
			minmax: [0, 99.999] // Me desculpem, mas tive que sacrificar um pouco desse para conseguir-
								// criar aquela genialidade...
		},
		{
			nome: "Volume dos Efeitos Sonoros", 
			val: 100, 
			tipo: "Slider", 
			minmax: [0, 98.001] // Ninguém se importa com esse aqui.
		}
	],
	
	Graficos: [
		{
			nome: "Baixa Resolução", 
			val: 0, 
			tipo: "Marcar", 
			minmax: [0, 1]
		},
		{
			nome: "Mostrar FPS", 
			val: 0, 
			tipo: "Marcar", 
			minmax: [0, 1]
		},
		{
			nome: "Screenshake", 
			val: 1, 
			tipo: "Marcar", 
			minmax: [0, 1]
		},
		{
			nome: "Pixel-Perfect", 
			val: 1, 
			tipo: "Marcar", 
			minmax: [0, 1]
		}
	],
	
	Tela: [
		{
			nome: "Tela Cheia", 
			val: window_get_fullscreen(), 
			tipo: "Marcar", 
			minmax: [0, 1]
		},
		{
			nome: "Tamanho da Janela", 
			val: [1280, 720], 
			tipo: "Escolher", 
			minmax: [
				[384, 216], 
				[640, 360],
				[1024, 576], 
				[1280, 720], 
				[1536, 864], 
				[1920, 1080], 
				[2560, 1440], 
				[3840, 2160]
			]
		},
		{
			nome: "Centralizar Janela", 
			val: centerWindow, 
			tipo: "Botao", 
			minmax: []
		},
		{
			nome: "Bordas de Janela", 
			val: window_get_borderless_fullscreen(), 
			tipo: "Marcar", 
			minmax: [0, 1]
		},
		{
			nome: "Resetar Janela", 
			val: noone, 
			tipo: "Botao", 
			minmax: []
		}
	],
	
	Controles: [
		{
			nome: "Aceitar", 
			val: ["Enter", "Espaço", "Z"], 
			tipo: "Input", 
			minmax: []
		},
		{
			nome: "Voltar", 
			val: ["ESC", "Backspace", "X"], 
			tipo: "Input", 
			minmax: []
		},
		{
			nome: "Tela Cheia", 
			val: ["F11", "Alt+Enter"], 
			tipo: "Input", 
			minmax: []
		}
		
		
	]
	
}


function stepOptions() { // Esse código rodará no Step do "oGame"
	
	// VARIÁVEIS DE ÁUDIO
	global.volGeral = global.Opcoes.Audio[0].val/100;
	global.volMusica = global.Opcoes.Audio[1].val/100;
	global.volFX = global.Opcoes.Audio[2].val/100;
	
	// VARIÁVEIS DE GRÁFICOS
	global.baixaRes = global.Opcoes.Graficos[0].val;
	global.showFPS = global.Opcoes.Graficos[1].val;
	global.hasScreenshake = global.Opcoes.Graficos[2].val;
	global.pixelPerfect = global.Opcoes.Graficos[3].val;
	
	// VARIÁVEIS DE TELA
	if (InputPressed(INPUT_VERB.TELACHEIA)) fullScreen();
	global.telaRes = global.Opcoes.Tela[1].val;
	
}



