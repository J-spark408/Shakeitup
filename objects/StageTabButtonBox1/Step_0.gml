if (position_meeting(mouse_x, mouse_y,StageTabButtonBox1) && StageStateHandler.StageState != GAMESTATE.Pause && !instance_exists(CustomerList)) {
	if (image_index <= 7) {
		image_speed = 5;	
	} else {
		image_speed = 0;
		if ((StageStateHandler.StageState == GAMESTATE.AddingIngredients || StageStateHandler.StageState == GAMESTATE.CheckingRecipe 
		|| StageStateHandler.StageState == GAMESTATE.ChoiceOption || StageStateHandler.StageState == GAMESTATE.Shaking 
		|| StageStateHandler.StageState == GAMESTATE.Stirring) && !instance_exists(CheatBook)) {
			instance_create_layer(x,y,"PopUpMenu",CheatBook);		
		}
	}
} else {
	image_index = 0;	
	instance_destroy(CheatBook);
}
