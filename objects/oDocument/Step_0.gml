
keyRotH = keyboard_check(ord("E"));
keyRotAH = keyboard_check(ord("Q"));
keyRotVel = keyboard_check(vk_shift);

selecionado = 0;
/*dadosInsp = {
	imagem: [x-28, y-46, x-11, y-23],
	ident: [x-28, y-46, x-11, y-23],
	nc: [x-28, y-46, x-11, y-23],
	ip: [x-28, y-46, x-11, y-23],
	val: [x-28, y-46, x-11, y-23]
}*/

if (position_meeting(mouse_x, mouse_y, id) && !global.mouseTrancado) {
	
	//global.docsel = 1;
	selecionado = 1;
	//global.cursorForma = (arrastando) ? "Dragging" : "Drag";
	global.cursorForma = "Drag";
	
	//selIm = position_meeting(mouse_x, mouse_y, sprIm);
	
	/*var _im = dadosInsp.imagem;
	var _id = dadosInsp.ident;
	var _nc = dadosInsp.nc;
	var _ip = dadosInsp.ip;
	var _va = dadosInsp.val;
	selDado = [
		point_in_rectangle(mouse_x, mouse_y, _im[0], _im[1], _im[2], _im[3]),
		/*point_in_rectangle(mouse_x, mouse_y, _id[0], _id[1], _id[2], _id[3]),
		point_in_rectangle(mouse_x, mouse_y, _nc[0], _nc[1], _nc[2], _nc[3]),
		point_in_rectangle(mouse_x, mouse_y, _ip[0], _ip[1], _ip[2], _ip[3]),
		point_in_rectangle(mouse_x, mouse_y, _va[0], _va[1], _va[2], _va[3])*
		0, 0, 0, 0
	];
	
	show_debug_message("Imagem: "+string(selDado[0]))
	show_debug_message("ID: "+string(selDado[1]))
	show_debug_message("NC: "+string(selDado[2]))
	show_debug_message("IP: "+string(selDado[3]))
	show_debug_message("VAL: "+string(selDado[4]))
	
	
	/*var _id = point_in_rectangle(mouse_x, mouse_y, );
	var _nc = point_in_rectangle(mouse_x, mouse_y, );
	var _ip = point_in_rectangle(mouse_x, mouse_y, );
	var _va = point_in_rectangle(mouse_x, mouse_y, );*/
	
	
    if (mouse_check_button_pressed(mb_left)) {
		oDocument.layer = layer_get_id("Instances")
		if (!global.japegoualgum) {
	
			arrastando = 1;
			global.japegoualgum = 1;
			layer = layer_get_id("Dragged")
			yspd = 0;
		}
		
		mouseOffset[0] = x - mouse_x;
		mouseOffset[1] = y - mouse_y;
		/*
			Ao pegar o documento (objeto), o objeto terá que ter a mesma posição que o mouse;
			Mas ao fazer isso, o ponto de ancoragem do objeto que ficaria na mesma posição que o mouse;
			Ao calcular esse mouse offset, o objeto não "teletransportaria" para o meio do mouse,
			ele continuaria no mesmo lugar;
			Eu meio que criaria um "ponto de ancorage temporário";
			Eu não sei se consegui explicar, mas saiba que sempre que for fazer um "drag and drop", isso
			vai ser essencial para funcionar direitinho.

		*/
		
	}


	
}


if (mouse_check_button_released(mb_left)) {
	arrastando = 0;
	global.japegoualgum = 0;
	if ((x >= 35 && y >= 153) and (x <= 108 && y <= 173) and (vistoun || vistous)) {
		oNPC.documentoEntreg = 1;
		pode_sumir();
	}
}
// Eu fiz um check mouse released no step pq ele sempre vai soltar no momento que você soltar o mouse;
// Se eu adicionasse um novo evento, ele só checaria isso se o mouse estivesse emcima do sprite;
// No step event eu posso soltar em qualquer lugar (exemplo: fora da janela) que ele ainda contaria;
// Eu não faço a mesma coisa com o Left Pressed pq eu só quero que o click conte se o mouse estiver emcima do sprite.


x = (arrastando) ? lerp(x, mouse_x + mouseOffset[0], .35) : x;
y = (arrastando) ? lerp(y, mouse_y + mouseOffset[1], .35) : y;

if (!sumiu) size = 1+(arrastando*0.1)/*+(pequeno*0.5)*/;
shsize = lerp(shsize, size+(arrastando*0.05), .25);
shoffset = lerp(shoffset, shsize*arrastando, .25)

image_xscale = lerp(image_xscale, size, .25);
image_yscale = image_xscale; // pra sempre ficar do mesmo tamanho sem se esticar

if (image_xscale <= 0 && sumiu) instance_destroy();

angulo += ((keyRotH*arrastando*2) - (keyRotAH*arrastando*2)) * (keyRotVel+1);
image_angle = lerp(image_angle, angulo, .25);

if (!sumiu) {
	if (x <= 96*1.5) {
		var _spr = asset_get_index("spr"+string(documento)+"Pequeno")
		if (sprite_exists(_spr)) sprite_index = _spr;
		else sprite_index = sprTestezinhoCenter;
		if (arrastando && (mouseOffset[0] >= 16 or mouseOffset[1] >= 16 or mouseOffset[0] <= 16 or mouseOffset[1] <= 16) && !pequeno) {
			x = mouse_x;
			y = mouse_y;
			mouseOffset[0] = 0;
			mouseOffset[1] = 0;
		}
		pequeno = 1;
	}
	else {
		if (pequeno) {
			shsize = .5;
		}
		var _spr = asset_get_index("spr"+string(documento)+"Grande")
		if (sprite_exists(_spr)) sprite_index = _spr;
		else sprite_index = sprTestCenter;
		pequeno = 0;
		cai = 0;
	}

	if (pequeno) {
	
	
		if (y <= 112*1.5 && !arrastando) cai = 1;
	
		if (y >= 126*1.5) {
			cai = 0;
			yspd = 0;
		}
	
		if (cai = 1 && !arrastando) {
			y += yspd;
			yspd += grv;
		}
	}

	x = clamp(round(x), 0, 256*1.5);
	y = clamp(round(y), 47*1.5, 144*1.5);
	
	if (vistoun || vistous) {
		oCarimboSim.textoCarimb = "Aperte 'R' para\nResetar";
		oCarimboNao.textoCarimb = "Aperte 'R' para\nResetar";
	}
	else {
		oCarimboSim.textoCarimb = "Botão direito para\nCarimbar";
		oCarimboNao.textoCarimb = "Botão direito para\nCarimbar";
	}

	if (documento == "Passaporte") {
		show_debug_message(x - vistopos[0]);
		show_debug_message(y - vistopos[1]);
		show_debug_message("MouseX: "+string(mouse_x) + " MouseY: "+string(mouse_y))
	}
	if (InputPressed(INPUT_VERB.RESET) && (vistous || vistoun)) {
		vistous = 0;
		vistoun = 0;
	}
}
