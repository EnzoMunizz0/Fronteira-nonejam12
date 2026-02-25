
/*
draw_text_transformed( // Isso foi só um testezinho
	x, 
	y-14, 
	//(variable_instance_exists(oDocument, "documento")) ? documento : "Teste",
	string(layer),
	.4, .4, 0
);*/

text_transformed_shadow(
	mouse_x, mouse_y - 10,
	.3, 0,
	c_white, c_black, 1 * position_meeting(mouse_x, mouse_y, id) * global.docsel, 
	documento, 
	.65, .65
)
text_transformed_shadow(
	mouse_x, mouse_y - 5,
	.15, 0,
	c_white, c_black, 1 * position_meeting(mouse_x, mouse_y, id) * global.docsel, 
	"Clique 'E' para analisar", 
	.45, .45
)




