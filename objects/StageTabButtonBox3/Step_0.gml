if (position_meeting(mouse_x, mouse_y,StageTabButtonBox3) && StageStateHandler.StageState != GAMESTATE.Pause && !instance_exists(CustomerList)) {
	if (image_index <= 7 && !instance_exists(CheatSheet)) {
		image_speed = 5;	
		
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