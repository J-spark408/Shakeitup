if (!instance_exists(CheatSheet)) {
	StageStateHandler.previousState = StageStateHandler.StageState;
	StageStateHandler.StageState = GAMESTATE.CheckingRecipe;
	var currentStage = ds_list_find_value(StageData.stage_list,global.current_stage);
	for (var sheetCreated = 0; sheetCreated < ds_list_size(currentStage.stageDrinkList); sheetCreated++) {
		instance_create_layer(room_width*(sheetCreated+1)/4,room_height/2,"Instances",CheatSheet);
	}
	show_debug_message(StageStateHandler.StageState)
} else {
	StageStateHandler.StageState = StageStateHandler.previousState;
	instance_destroy(CheatSheet);
	show_debug_message(StageStateHandler.StageState)
}

