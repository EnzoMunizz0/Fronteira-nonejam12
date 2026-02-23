

draw_sprite_ext(sprite_index, -1, x+(shoffset), y+(shoffset), shsize, shsize, image_angle, c_black, .2)

draw_self();



draw_text_transformed( // Isso foi só um testezinho
	x, 
	y-14, 
	//(variable_instance_exists(oDocument, "documento")) ? documento : "Teste",
	string(layer),
	.4, .4, 0
);

