
/*var _car = position_meeting(mouse_x, mouse_y, oCarimbos)
if (_car) {
	global.cursorForma = "Drag"
	if (mouse_check_button_pressed(mb_left)) selecionado = 1;
}
if (mouse_check_button_released(mb_left)) selecionado = 0;

x = oMesinhaCarimbos.x+(18*power(-1, carimbo));
y = oMesinhaCarimbos.y-14;
if (selecionado) {
	x = mouse_x;
	y = mouse_y;
}*/
//x = 200;
//y = 200;
selecionado = 0;
/*dadosInsp = {
	imagem: [x-28, y-46, x-11, y-23],
	ident: [x-28, y-46, x-11, y-23],
	nc: [x-28, y-46, x-11, y-23],
	ip: [x-28, y-46, x-11, y-23],
	val: [x-28, y-46, x-11, y-23]
}*/

if (position_meeting(mouse_x, mouse_y, id)) {
	selecionado = 1;
	global.cursorForma = "Drag";
    if (mouse_check_button_pressed(mb_left)) {
		//oDocument.layer = layer_get_id("Instances")
		//if (!global.japegoualgum) {
	
			arrastando = 1;
			//global.japegoualgum = 1;
			//layer = layer_get_id("Dragged")
			//yspd = 0;
		//}
		mouseOffset[0] = x - mouse_x;
		mouseOffset[1] = y - mouse_y;
	}
}

pressionando = arrastando && mouse_check_button(mb_right);

if (mouse_check_button_released(mb_left)) {
	arrastando = 0;
	global.japegoualgum = 0;
}

xInicial = oMesinhaCarimbos.x+18;
yInicial = oMesinhaCarimbos.y-14;
x = (arrastando) ? lerp(x, mouse_x + mouseOffset[0], .35) : lerp(x, xInicial, .6);
y = (arrastando) ? lerp(y, mouse_y + mouseOffset[1], .35) : lerp(y, yInicial, .6);

size = 1+(arrastando*0.1)-(pressionando*.2)/*+(pequeno*0.5)*/;
shsize = lerp(shsize, size+(arrastando*0.05*!pressionando), .25+(pressionando*.3));
shoffset = lerp(shoffset, shsize*arrastando*!pressionando, .25+(pressionando*.3))

image_xscale = lerp(image_xscale, size, .25+(pressionando*.3));
image_yscale = image_xscale; // pra sempre ficar do mesmo tamanho sem se esticar


if (instance_exists(oDocument)) {
	var _car = place_meeting(x, y, oDocument);
	if (_car && mouse_check_button_pressed(mb_right) && !oDocument.vistoun && !oDocument.vistous && oDocument.documento == "Passaporte") {
		if (!oDocument.vistoun) {
			oDocument.qualvisto = 0;
			oDocument.vistoposoffset[2] = oDocument.x - oDocument.vistopos[2];
			oDocument.vistoposoffset[3] = oDocument.y - oDocument.vistopos[3];
		}
		oDocument.vistoun = 1;
	}
	if (!oDocument.vistoun) {
		oDocument.vistopos[2] = x;
		oDocument.vistopos[3] = y;
	}
}



