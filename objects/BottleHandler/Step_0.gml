if (StageStateHandler.StageState == GAMESTATE.AddingIngredients) {
	TiltBottleLeft();
	TiltBottleRight();
	if (mouse_check_button(mb_left) && position_meeting(mouse_x,mouse_y,StageStateHandler._get_obj)) {
		is_grabbed = true;
	}
	if (mouse_check_button_released(mb_left)) {
		is_grabbed = false;	
	}
	if (is_grabbed) {
		x = mouse_x;
		y = mouse_y;
	}
}

if (StageStateHandler.StageState == GAMESTATE.AddingIngredients && !global.bottleChoosen) {
	for (var liquid_index = 0; liquid_index < ds_map_size(liquidList); liquid_index++) {
        var selectedBottle = ds_map_find_value(liquidList, liquid_index);
        if (global.currentBottle == liquid_index && !global.bottleChoosen) {
            instance_destroy(bottle);
            show_debug_message(global.currentBottle);
            show_debug_message(liquid_index);
            bottle = instance_create_layer(BottleHandler.x,BottleHandler.y,"Instances",StageStateHandler._get_obj);
            bottle_selected = liquid_index;
            global.bottleChoosen = true;
        }
    }
}	
