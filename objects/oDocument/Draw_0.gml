
var _selection = position_meeting(mouse_x, mouse_y, id) * selecionado;

draw_sprite_ext(sprite_index, -1, x+(shoffset), y+(shoffset), shsize, shsize, image_angle, c_black, .2)

draw_self();

draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

draw_set_font(fPixelDoc);
draw_set_colour(#3d203b);
draw_set_alpha(!pequeno);

draw_text_ext_transformed(
	x-14 - (20 * (image_xscale-1)), y-8 - (10 * (image_yscale-1)), 
	"Alfredo", 10, 10000, 
	image_xscale, image_yscale, 0
);

draw_text_ext_transformed(
	x-13 - (20 * (image_xscale-1)), y+2 - (0 * (image_yscale-1)), 
	"Patroclus", 10, 10000, 
	image_xscale, image_yscale, 0
);

draw_text_ext_transformed(
	x-14 - (20 * (image_xscale-1)), y+12 - (-10 * (image_yscale-1)), 
	"b7o29", 10, 10000, 
	image_xscale, image_yscale, 0
);

draw_set_colour(#773A4D);
draw_text_ext_transformed(
	x-13 - (10 * (image_xscale-1)), y+24 - (-20 * (image_yscale-1)), 
	"02/48/92", 10, 10000, 
	image_xscale, image_yscale, 0
);

draw_set_font(fPixelRegular);
draw_set_colour(c_white);
draw_set_alpha(1);

draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, c_black, .15*_selection)



/*draw_text_transformed( // Isso foi só um testezinho
	x, 
	y-14, 
	//(variable_instance_exists(oDocument, "documento")) ? documento : "Teste",
	string(layer),
	.4, .4, 0   position_meeting(mouse_x, mouse_y, id)
);
*/
