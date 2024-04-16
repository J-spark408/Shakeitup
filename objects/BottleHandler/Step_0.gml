if (StageStateHandler.StageState == GAMESTATE.AddingIngredients) {
	TiltBottleLeft();
	TiltBottleRight();
	if (mouse_check_button(mb_left) && position_meeting(mouse_x,mouse_y,BottleHandler.bottleObj)) {
		if (!instance_exists(IceScoop)) {
			is_grabbed = true;
		} else {
			instance_create_layer(IceBucket.x,IceBucket.y + 10,"Instances",PutScoopText);
		}
	}
	if (mouse_check_button_released(mb_left)) {
		is_grabbed = false;	
	}
	if (is_grabbed) {
		x = mouse_x;
		y = mouse_y;
	}
}

if (StageStateHandler.StageState == GAMESTATE.ChoosingIngredients) {
	for (var liquid_index = 0; liquid_index < ds_map_size(liquidList); liquid_index++) {
		if (mouse_check_button_released(mb_left)) {
			if (global.currentBottle != liquid_index) {
				image_alpha = 0.4;
			}
		}
		if (global.currentBottle == liquid_index) {
			var selectedBottle = ds_map_find_value(liquidList, liquid_index);
			selectedBottle.image_alpha = 1;	
		}
	}
}