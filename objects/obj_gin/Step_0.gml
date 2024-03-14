event_inherited();
if (mouse_check_button_released(mb_left)) {
	if (global.currentBottle != LIQUOR.GIN) {
		image_alpha = 0.4;
	}
}
if (global.currentBottle == LIQUOR.GIN) {
	image_alpha = 1;	
}