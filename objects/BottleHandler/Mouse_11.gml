if (StageStateHandler.StageState == GAMESTATE.ChoosingIngredients && instance_exists(ShowBottleNames)) {
	image_alpha = 0.4
	ShowBottleNames.bottleName = "";
}