
draw_set_colour(#1A080E)
draw_set_alpha(transicaoAlpha)
draw_rectangle(-10, -10, 394, 226, 0);

draw_set_colour(c_white)
draw_set_alpha(1)

if (global.cursorForma == "Beam") gpu_set_blendmode_ext(bm_inv_dest_colour, bm_inv_src_colour);

var _crs = draw_sprite_ext(
	asset_get_index("sprCursor"+global.cursorForma+((mouse_check_button(mb_left)) ? "Click" : "")), -1, 
	device_mouse_x_to_gui(0), device_mouse_y_to_gui(0),
	1, 1, 0, 
	c_white	, 1
)

gpu_set_blendmode(bm_normal);


