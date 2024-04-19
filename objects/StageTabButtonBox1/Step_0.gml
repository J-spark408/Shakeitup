if (position_meeting(mouse_x, mouse_y,StageTabButtonBox1) && StageStateHandler.StageState != GAMESTATE.Pause && !instance_exists(CustomerList)) {
	if (image_index <= 5) {
		image_speed++;	
	} else {
		image_speed = 0;
		if (StageStateHandler.StageState == GAMESTATE.AddingIngredients && !instance_exists(IceBucket)) {
			instance_create_layer(x,y,"PopUpMenu",IceBucket);		
		}
		if (StageStateHandler.StageState == GAMESTATE.Shaking || StageStateHandler.StageState == GAMESTATE.Stirring) {
			if (!instance_exists(MixOptionBtn)) {
				instance_create_layer(x,y,"PopUpMenu",MixOptionBtn);	
			}
		}
	}
} else {
	image_index = 0;	
	instance_destroy(IceBucket);
	instance_destroy(MixOptionBtn);
}
