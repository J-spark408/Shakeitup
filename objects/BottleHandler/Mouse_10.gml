if (StageStateHandler.StageState == GAMESTATE.ChoosingIngredients) {
	image_alpha = 0.7
	show_text = true;
	if (position_meeting(mouse_x,mouse_y,Vodka)) {
		ShowBottleNames.bottleName = object_get_name(Vodka);
	} else if (position_meeting(mouse_x,mouse_y,Tequila)) {
		ShowBottleNames.bottleName = object_get_name(Tequila);
	} else if (position_meeting(mouse_x,mouse_y,Whiskey)) {
		ShowBottleNames.bottleName = object_get_name(Whiskey);
	} else if (position_meeting(mouse_x,mouse_y,Gin)) {
		ShowBottleNames.bottleName = object_get_name(Gin);
	} else if (position_meeting(mouse_x,mouse_y,Vermouth)) {
		ShowBottleNames.bottleName = object_get_name(Vermouth);
	} else if (position_meeting(mouse_x,mouse_y,Bitter)) {
		ShowBottleNames.bottleName = object_get_name(Bitter);
	} 
}
