function text_drop_shadow(_x, _y, _color, _color_shadow, _string, _h_offset, _v_offset){  
    draw_set_color(_color_shadow);
    draw_text(_x, _y, _string);
    draw_set_color(_color);
    draw_text(_x+_h_offset, _y+_v_offset, _string);
   
}

function text_transformed_shadow(_x, _y, _scale, _angle = 0, _color, _color_shadow, _alpha, _string, _h_offset, _v_offset){  
    draw_set_color(_color_shadow);
	draw_set_alpha(_alpha);
    draw_text_transformed(_x, _y, _string, _scale, _scale, _angle);
    draw_set_color(_color);
    draw_text_transformed(_x-_h_offset, _y-_v_offset, _string, _scale, _scale, _angle);
	draw_set_alpha(1);
   
}

/*

Créditos do código (dei uma reformulada):

https://forum.gamemaker.io/index.php?threads/fonts-with-an-outline-how.82842/post-493149

*/
