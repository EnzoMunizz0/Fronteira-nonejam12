

if (global.cursorForma == "Beam") gpu_set_blendmode_ext(bm_inv_dest_colour, bm_inv_src_colour);

draw_sprite_ext(
	asset_get_index("sprCursor"+global.cursorForma+((mouse_check_button(mb_left)) ? "Click" : "")), -1, 
	mouse_x, mouse_y, 
	1, 1, 0, 
	c_white	, 1
)
gpu_set_blendmode(bm_normal);


