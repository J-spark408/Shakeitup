
if (global.currentBottle != noone) {
	game_data.StageState = STATES.AddingIngredients;
	show_debug_message(global.currentBottle);
	room_goto(rm_game);	
}

//if (game_data._picked >= 1 && game_data._picked <= 2) {
//	room_goto(rm_room_game);
//}