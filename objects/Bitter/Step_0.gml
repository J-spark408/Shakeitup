event_inherited();
if (StageStateHandler.StageState == GAMESTATE.ChoosingIngredients) {
	if (mouse_check_button_released(mb_left)) {
		if (global.currentBottle != LIQUOR.BITTER) {
			image_alpha = 0.4;
		}
	}
	if (global.currentBottle == LIQUOR.BITTER) {
		image_alpha = 1;	
	}
}