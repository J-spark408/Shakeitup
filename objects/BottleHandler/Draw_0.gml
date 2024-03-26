draw_self();

if (StageStateHandler.StageState == GAMESTATE.AddingIngredients && checkedBottle) {
	for (var liquid_index = 0; liquid_index < ds_map_size(liquidList); liquid_index++) {
        if (global.currentBottle == liquid_index) {
			var selectedBottle = ds_map_find_value(liquidList, liquid_index);
            //StageStateHandler. = selectedBottle;
			bottleObj = selectedBottle;
            instance_create_layer(initial_position_x,initial_position_y,"Instances",bottleObj);
			bottleObj.y -= bottleObj.sprite_height;
			bottle_selected = liquid_index;
            checkedBottle = false;
        }
    }
}	
