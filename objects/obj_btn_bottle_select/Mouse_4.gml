
if (global.currentBottle != noone) {
	StageStateHandler.StageState = GAMESTATE.AddingIngredients;
	room_goto(rm_game);	
}

//if (game_data._picked >= 1 && game_data._picked <= 2) {
//	room_goto(rm_room_game);
//}