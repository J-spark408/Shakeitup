if (global.currentState == MENUSTATE.STAGE || global.currentState == MENUSTATE.RECIPE) {
	if (instance_exists(StageStateHandler)) {
		StageStateHandler.stagePassed = false;
	}
	instance_destroy(newRecipeArrow);
	global.currentState = MENUSTATE.RECIPE;
	room_goto(rm_recipe);
}