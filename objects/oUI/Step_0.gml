

smisel += keyboard_check_pressed(vk_down) - keyboard_check_pressed(vk_up);
smisel = clamp(smisel, 1, array_length(startmenuitens));


	//show_debug_message("Teste aqui do menu: "+string(startmenuitens[0][1]));

