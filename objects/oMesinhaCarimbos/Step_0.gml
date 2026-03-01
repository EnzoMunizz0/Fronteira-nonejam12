
image_index = 0;
if (position_meeting(mouse_x, mouse_y, oMesinhaCarimbos) && !global.mouseTrancado) {
	image_index = 1;
	if (mouse_check_button_pressed(mb_left)) {
		prafora = !prafora;
	}
}
finalY = (prafora) ? 216 : 246;
y = lerp(y, finalY, .15);
