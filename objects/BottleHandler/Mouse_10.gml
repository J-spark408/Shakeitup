if (StageStateHandler.StageState == GAMESTATE.ChoosingIngredients && instance_exists(ShowBottleNames)) {
	image_alpha = 0.7;
	
	for (var liquid_index = 0; liquid_index < ds_map_size(liquidList); liquid_index++) {
        var selectedBottle = ds_map_find_value(liquidList, liquid_index);
		if (position_meeting(mouse_x,mouse_y,selectedBottle)) {
		    ShowBottleNames.bottleName = object_get_name(selectedBottle);
			ShowBottleNames.namePositionX = selectedBottle.x;
			ShowBottleNames.namePositionY = selectedBottle.y + selectedBottle.sprite_height + 20;
        }
    }
}
