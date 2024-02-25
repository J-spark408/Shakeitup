//event_inherited();

if (mouse_check_button_released(mb_left)) {
	if (game_data._picked != LIQUOR.VERMOUTH) {
		image_alpha = 0.4;
	}
}
if (game_data._picked == LIQUOR.VERMOUTH) {
	image_alpha = 1;	
}