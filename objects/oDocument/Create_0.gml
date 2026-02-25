
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
shsize = size; // tamanho da sombra
shoffset = 0; // deslocamento da sombra

pequeno = 0; // se o objeto está pequeno ou não
cai = 0; // vai ativar a gravidade do objeto

grv = .15; // cálculo para gravidade do objeto
yspd = 0; // cálculo para a aceleração da gravidade do objeto
