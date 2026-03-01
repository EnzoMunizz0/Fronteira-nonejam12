
var _selection = position_meeting(mouse_x, mouse_y, id) * selecionado;

draw_sprite_ext(sprite_index, -1, x+(shoffset), y+(shoffset), shsize, shsize, image_angle, c_black, .2)

draw_self();


draw_set_halign(fa_left);
draw_set_valign(fa_bottom);

switch documento {
	case "Passaporte":
		draw_set_font(fPixelDoc);
		draw_set_colour(#3d203b);
		draw_set_alpha(!pequeno);



		//Passaporte - Imagem
		//draw_set_alpha(selIm);
		/*sprIm = draw_sprite_ext(
			sprPassaporteSelImagem, -1, 
			x, y, 
			image_xscale, image_yscale, image_angle, 
			c_white, 
			selIm*!pequeno
		)*/
		/*
		var _im = dadosInsp.imagem;
		draw_set_alpha(selDado[0]*!pequeno)
		draw_rectangle(
			_im[0], _im[1], _im[2], _im[3], 0
		);*/

		//Passaporte - ID
		draw_text_ext_transformed(
			x-14 - (20 * (image_xscale-1)), y-8 - (10 * (image_yscale-1)), 
			"Alfredo", 10, 10000, 
			image_xscale, image_yscale, 0
		);

		//Passaporte - NC
		draw_text_ext_transformed(
			x-13 - (20 * (image_xscale-1)), y+2 - (0 * (image_yscale-1)), 
			"Patroclus", 10, 10000, 
			image_xscale, image_yscale, 0
		);

		//Passaporte - IP
		draw_text_ext_transformed(
			x-14 - (20 * (image_xscale-1)), y+12 - (-10 * (image_yscale-1)), 
			"b7o29", 10, 10000, 
			image_xscale, image_yscale, 0
		);

		//Passaporte - VAL
		draw_set_colour(#773A4D);
		draw_text_ext_transformed(
			x-13 - (10 * (image_xscale-1)), y+24 - (-20 * (image_yscale-1)), 
			"02/48/92", 10, 10000, 
			image_xscale, image_yscale, 0
		);

		draw_set_font(fPixelRegular);
		draw_set_colour(c_white);
		draw_set_alpha(1);

		// Passaporte - VISTOS
		draw_sprite_ext(
			sprVistos, 1, 
			(!vistous) ? vistopos[0] : x - vistoposoffset[0], (!vistous) ? vistopos[1] : y-vistoposoffset[1], 
			image_xscale, image_yscale, 0, 
			c_white, !pequeno*vistous
		);
		draw_sprite_ext(
			sprVistos, 0, 
			(!vistoun) ? vistopos[2] : x - vistoposoffset[2], (!vistoun) ? vistopos[3] : y-vistoposoffset[3], 
			image_xscale, image_yscale, 0, 
			c_white, !pequeno*vistoun
		);
	break;
}