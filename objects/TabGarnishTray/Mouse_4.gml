if (StageStateHandler.StageState == GAMESTATE.AddingIngredients) {// StageStateHandler.StageState == GAMESTATE.AddGarnish) {
	if (!instance_exists(ModeGarnish)) {
		instance_create_layer(room_width/2,room_height*3/4 + 10,"Instances",ModeGarnish);
	} else {
		instance_destroy(ModeGarnish);	
	}
}