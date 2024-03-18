if (game_data.StageState == GAMESTATE.AddingIngredients) {
	TiltBottleLeft();
	TiltBottleRight();
	if (mouse_check_button(mb_left) && position_meeting(mouse_x,mouse_y,game_data._get_obj)) {
		is_grabbed = true;
	}
	if (mouse_check_button_released(mb_left)) {
		is_grabbed = false;	
	}
	if (is_grabbed) {
		x = mouse_x;
		y = mouse_y;
	}
}

if (game_data.StageState == GAMESTATE.AddingIngredients && !global.bottleChoosen) {
	setCurrentBottle();
}	

//if (room == rm_game && bottle == noone) {
//	createNewBottle();	
//	show_debug_message("bottle")
//	show_debug_message(bottle);
//}

//if (game_data.StageState == GAMESTATE.ChoosingIngredients) {
//	bottle = noone;
//	global.bottleChoosen = false;
//}