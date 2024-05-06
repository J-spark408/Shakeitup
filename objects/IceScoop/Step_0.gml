if (StageStateHandler.StageState == GAMESTATE.AddingIngredients || StageStateHandler.StageState == GAMESTATE.AddGarnish) {
	x = mouse_x;
	y = mouse_y;
	depth = 1;
	
	if (instance_exists(ModeGarnish)) {
		depth = -120;	
	}

	if (mouse_check_button_pressed(mb_right) && instance_exists(IceScoop)) {
		instance_create_layer(x-75,y+120,"Instances",Ice);
		instance_create_layer(x-75,y+125,"Instances",Ice);
		instance_create_layer(x-75,y+130,"Instances",Ice);
		// var iceCreated += 3;
	}
}