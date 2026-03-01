

//draw_set_alpha(luznegra*.5);
gpu_set_blendmode_ext(bm_dest_color, bm_zero);
draw_sprite(sprLuzNegra, luznegra, device_mouse_x_to_gui(0), device_mouse_y_to_gui(0));
gpu_set_blendmode(bm_normal);

