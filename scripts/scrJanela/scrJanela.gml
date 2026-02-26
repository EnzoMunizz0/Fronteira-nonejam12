

function centerWindow() {
	window_set_position(display_get_width()/2-(window_get_width()/2), display_get_height()/2-(window_get_height()/2));
}

function fullScreen() {
	window_set_fullscreen(!window_get_fullscreen());
    window_set_size(global.telaRes[0], global.telaRes[1]);
}

function resetWindow() {
	window_set_fullscreen(false);
    window_set_showborder(true);
    window_set_size(1280, 720);
    centerWindow();
}


