if (position_meeting(mouse_x, mouse_y,StageTabButtonBox2) && StageStateHandler.StageState != GAMESTATE.Pause && !instance_exists(CustomerList)) {
	if (image_index <= 7 && !instance_exists(CheatSheet)) {
		image_speed = 5;	
		
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
		if (StageStateHandler.StageState == GAMESTATE.AddGarnish && !instance_exists(TabGarnishTray)) {
			instance_create_layer(x,y,"PopUpMenu",TabGarnishTray);	
		}
	}
} else {
	image_index = 0;	
	instance_destroy(IceBucket);
	instance_destroy(MixOptionBtn);
	instance_destroy(TabGarnishTray);
}


