
var _selection = position_meeting(mouse_x, mouse_y, id) * global.docsel;

draw_sprite_ext(sprite_index, -1, x+(shoffset), y+(shoffset), shsize, shsize, image_angle, c_black, .2)

draw_self();

draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, c_black, .15*_selection)



/*draw_text_transformed( // Isso foi só um testezinho
	x, 
	y-14, 
	//(variable_instance_exists(oDocument, "documento")) ? documento : "Teste",
	string(layer),
	.4, .4, 0   position_meeting(mouse_x, mouse_y, id)
);
*/
