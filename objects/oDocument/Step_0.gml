
keyRotH = keyboard_check(ord("E"));
keyRotAH = keyboard_check(ord("Q"));
keyRotVel = keyboard_check(vk_shift);

selecionado = 0;
if (position_meeting(mouse_x, mouse_y, id)) {
	
	//global.docsel = 1;
	selecionado = 1;
	
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
}
// Eu fiz um check mouse released no step pq ele sempre vai soltar no momento que você soltar o mouse;
// Se eu adicionasse um novo evento, ele só checaria isso se o mouse estivesse emcima do sprite;
// No step event eu posso soltar em qualquer lugar (exemplo: fora da janela) que ele ainda contaria;
// Eu não faço a mesma coisa com o Left Pressed pq eu só quero que o click conte se o mouse estiver emcima do sprite.


x = (arrastando) ? lerp(x, mouse_x + mouseOffset[0], .35) : x;
y = (arrastando) ? lerp(y, mouse_y + mouseOffset[1], .35) : y;

size = .5+(arrastando*0.1)+(pequeno*0.5);
shsize = lerp(shsize, size+(arrastando*0.05), .25);
shoffset = lerp(shoffset, shsize*arrastando, .25)

image_xscale = lerp(image_xscale, size, .25);
image_yscale = image_xscale; // pra sempre ficar do mesmo tamanho sem se esticar


angulo += ((keyRotH*arrastando*2) - (keyRotAH*arrastando*2)) * (keyRotVel+1);
image_angle = lerp(image_angle, angulo, .25);


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
	x = clamp(x, 0, 256*1.5);
	y = clamp(y, 0, 144*1.5);
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
	x = clamp(x, 0, 256*1.5);
	y = clamp(y, 47*1.5, 144*1.5);
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

