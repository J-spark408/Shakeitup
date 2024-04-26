global.currentState = MENUSTATE.STAGE;
StageStateHandler.StageState = GAMESTATE.Intro;
//show_debug_message(ds_list_size(RecipeChecker.recipe_list))
//ds_list_delete(RecipeChecker.recipe_list,0);
//ds_list_delete(RecipeChecker.recipe_list,1);
//ds_list_delete(RecipeChecker.recipe_list,2);
//ds_list_delete(RecipeChecker.recipe_list,3);
//show_debug_message(ds_list_size(RecipeChecker.recipe_list))
RecipeChecker.listCreated = false;
ResetGameForResetHomeMenu();

if (StageStateHandler.stagePassed) {
	global.currentState = MENUSTATE.RECIPE;
}

room_goto(rm_stage_selection);