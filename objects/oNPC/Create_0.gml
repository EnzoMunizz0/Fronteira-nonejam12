
novoalien = global.aliens[random_range(0, array_length(global.aliens)-1)];

show_debug_message(novoalien.nome);
show_debug_message(novoalien.nc);
show_debug_message(novoalien.pcu);
show_debug_message(novoalien.docs);

spd = 1;
pntChegada = 71;
chegou = 0;
documentoEntreg = 0;
pare = 0;

vaisererrado = 0;

estado = noone;

global.viajantesRestantes = (global.dia <= 3) ? global.levels[global.dia-1].vmax+1 : 6;
global.viajantesMax = (global.dia <= 3) ? global.levels[global.dia-1].vmax : 5;


entregar_docs = function(_quant = 1) {
	
	for (var i = 1; i <= _quant; i++) {
		var _posval = [50, 73, 90];
		var _docvars = { // Adicionar variáveis ao obj oDocument
			documento: "Passaporte"
		};
		switch i {
			case 1:
				var _docvars = { // Adicionar variáveis ao obj oDocument
					documento: "Passaporte"
				};
			break;
			case 2:
			case 3:
				var _docvars = { // Adicionar variáveis ao obj oDocument
					documento: "Bungas"
				};
			break;
		}

		instance_create_layer(
			//73 + ((_quant % 2 == 0) ? -10 + (i * 20) : (i - _quant)*20), 
			_posval[i-1], 
			186, 
			"Instances", 
			oDocument, 
			_docvars
		);
	}

}

estado_chegou = function() {
	if (!chegou) entregar_docs(1);
	chegou = 1;
}
estado_parado = function() {
	if (!chegou) {
		global.viajantesRestantes--;
		if (global.viajantesRestantes <= 0) {
			global.dia++;
			nextRoom(GameRoom);
			pare = 1;
		}
		oUI.pcTexto = "";
		vaisererrado = choose(0, 1); // 25% de chance de estar errado
		novoalien = global.aliens[random_range(0, array_length(global.aliens)-1)];
		//if (vaisererrado) novoalien = novoalien+"10";
		if (x >= pntChegada) x = -42;
		image_index = novoalien.index;
		show_debug_message(novoalien.nome);
		show_debug_message(novoalien.nc);
		show_debug_message(novoalien.pcu);
		show_debug_message(novoalien.docs);
		show_debug_message("ERROS = "+string(global.erros));
		show_debug_message("ERROS = "+string(global.erros));
		show_debug_message("ERROS = "+string(global.erros));
		show_debug_message("ERROS = "+string(global.erros));
		estado = estado_chegando;
	}
}

estado_chegando = function() {
	if (!pare) {
		x += spd;
		if (x >= pntChegada) estado = estado_chegou;
	}
}
estado_deportado = function() {
	chegou = 0;
	x -= spd;
	if (x <= -42) {
		if (!vaisererrado) global.erros++;
		estado = estado_parado;
	}
}
estado_aceitado = function() {
	chegou = 0;
	x += spd;
	if (x >= 185) {
		if (vaisererrado) global.erros++;
		estado = estado_parado;
	}
}

estado = estado_parado;


x = -42;
y = 168;
