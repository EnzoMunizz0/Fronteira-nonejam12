
keyRotH = keyboard_check(ord("E"));
keyRotAH = keyboard_check(ord("Q"));
keyRotVel = keyboard_check(vk_shift);


if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x, mouse_y, id)) {
    
	oDocument.layer = layer_get_id("Instances")
	if (!global.japegoualgum) {
	
		arrastando = 1;
		global.japegoualgum = 1;
		layer = layer_get_id("Dragged")
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

if (mouse_check_button_released(mb_left)) {
	arrastando = 0;
	global.japegoualgum = 0;
}
// Eu fiz um check mouse released no step pq ele sempre vai soltar no momento que você soltar o mouse;
// Se eu adicionasse um novo evento, ele só checaria isso se o mouse estivesse emcima do sprite;
// No step event eu posso soltar em qualquer lugar (exemplo: fora da janela) que ele ainda contaria;
// Eu não faço a mesma coisa com o Left Pressed pq eu só quero que o click conte se o mouse estiver emcima do sprite.

//depth = -arrastando;

x = (arrastando) ? lerp(x, mouse_x + mouseOffset[0], .35) : x;
y = (arrastando) ? lerp(y, mouse_y + mouseOffset[1], .35) : y;

size = 1+(arrastando*0.1);
shsize = lerp(shsize, size+(arrastando*0.05), .25);
shoffset = lerp(shoffset, shsize*arrastando, .25)

image_xscale = lerp(image_xscale, size, .25);
image_yscale = image_xscale; // pra sempre ficar do mesmo tamanho sem se esticar


angulo += ((keyRotH*arrastando*2) - (keyRotAH*arrastando*2)) * (keyRotVel+1);
image_angle = lerp(image_angle, angulo, .25);
