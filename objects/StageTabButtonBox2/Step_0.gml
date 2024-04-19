if (position_meeting(mouse_x, mouse_y,StageTabButtonBox2) && StageStateHandler.StageState != GAMESTATE.Pause && !instance_exists(CustomerList)) {
	if (image_index <= 5) {
		image_speed++;	
		
	} else {
		image_speed = 0;
		if (StageStateHandler.StageState == GAMESTATE.AddingIngredients && !instance_exists(TrashBin)) {
			instance_create_layer(x,y,"PopUpMenu",TrashBin);
		}
	}
} else {
	image_index = 0;	
	instance_destroy(TrashBin);
}

