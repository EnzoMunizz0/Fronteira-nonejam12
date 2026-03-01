
//Key Rotação Horário
keyRotH = 0;
//Key Rotação Anti-Horário
keyRotAH = 0;
//Key Rotação Veloz
keyRotVel = 0;

selecionado = 0; //verifica se o mouse passou em cima do objeto
arrastando = 0; //verifica se você está pegando o objeto

mouseOffset = [0, 0] //serve para calcular distância do mouse para o objeto, no "Left Pressed" explico o pq


angulo = 0; // ângulo que o  objeto vai ficar
size = 1; // tamanho que o objeto vai ficar
shsize = 0; // tamanho da sombra
shoffset = 0; // deslocamento da sombra
image_xscale = 0
image_yscale = 0

pequeno = 1; // se o objeto está pequeno ou não
cai = 0; // vai ativar a gravidade do objeto

grv = .15; // cálculo para gravidade do objeto
yspd = 0; // cálculo para a aceleração da gravidade do objeto


vistous = 0;
vistoun = 0;
vistopos = [0, 0, 0, 0];
vistoposoffset = [0, 0, 0, 0]
qualvisto = 0;

/*dadosInsp = {
	imagem: [x-28, y-46, x-11, y-23],
	ident: [x-28, y-46, x-11, y-23],
	nc: [x-28, y-46, x-11, y-23],
	ip: [x-28, y-46, x-11, y-23],
	val: [x-28, y-46, x-11, y-23]
}
selDado = [0, 0, 0, 0, 0];*/
/*selIm = 0;
selId = 0;
selNc = 0;
selIp = 0;
selVa = 0;

sprIm = 0;
sprId = 0;
sprNc = 0;
sprIp = 0;
sprVa = 0;*/

sumiu = 0;
pode_sumir = function() {
	size = 0;
	sumiu = 1;
}

var _spr = asset_get_index("spr"+string(documento)+"Pequeno");
if (sprite_exists(_spr)) sprite_index = _spr;

