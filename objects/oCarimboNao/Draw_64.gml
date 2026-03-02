
draw_set_font(fPixelDoc);
draw_set_halign(fa_center);
draw_set_valign(fa_top);
draw_set_alpha(arrastando * global.comecaojogo);
draw_set_colour(#1A080E);
draw_text_ext_transformed(round(x)+.5, round(y+10)+.5, textoCarimb, 10, 100000, .6, .6, 0);
draw_set_colour(#E0D9D9);
draw_text_ext_transformed(round(x), round(y+10), textoCarimb, 10, 100000, .6, .6, 0);
draw_set_colour(c_white);
draw_set_alpha(1);
draw_set_valign(fa_middle);
draw_set_font(fPixelRegular);

