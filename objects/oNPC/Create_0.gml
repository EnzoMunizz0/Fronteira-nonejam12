
novoalien = global.aliens[random_range(0, array_length(global.aliens)-1)];

show_debug_message(novoalien.nome);
show_debug_message(novoalien.nc);
show_debug_message(novoalien.pcu);
show_debug_message(novoalien.docs);

spd = 1;
pntChegada = 71;
chegou = 0;
documentoEntreg = 0;

estado = noone;




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
		novoalien = global.aliens[random_range(0, array_length(global.aliens)-1)];
		if (x >= pntChegada) x = -42;
		image_index = novoalien.index;
		show_debug_message(novoalien.nome);
		show_debug_message(novoalien.nc);
		show_debug_message(novoalien.pcu);
		show_debug_message(novoalien.docs);
		estado = estado_chegando;
	}
}

estado_chegando = function() {
	x += spd;
	if (x >= pntChegada) estado = estado_chegou;
}
estado_deportado = function() {
	chegou = 0;
	x -= spd;
	if (x <= -42) estado = estado_parado;
}
estado_aceitado = function() {
	chegou = 0;
	x += spd;
	if (x >= 185) estado = estado_parado;
}

estado = estado_parado;


x = -42;
y = 168;
