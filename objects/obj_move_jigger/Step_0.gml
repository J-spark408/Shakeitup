if (StageStateHandler.StageState == GAMESTATE.AddingIngredients && global.currentBottle != noone) {
	if (keyboard_check_pressed(ord("F"))) {
	    // Toggle visibility of objects
	    if (!instance_exists(obj_jigger_2oz)) {
	        instance_create_layer(x, y, "Instances", obj_jigger_2oz);
	        instance_destroy(obj_jigger_1oz);
	    } else {
	        instance_create_layer(x, y, "Instances", obj_jigger_1oz);
	        instance_destroy(obj_jigger_2oz);
	    }
	}

	if (keyboard_check(ord("T"))) {
		if (phy_rotation <= 110) {
			phy_rotation += 1;
		} else {
			phy_rotation += 0;	
			fully_tilted = true;		
		}	
	}


	if (fully_tilted) {
		if (keyboard_check(ord("R"))) {
			phy_rotation = 0;
			phy_position_x = position_to_x;
			phy_position_y = position_to_y;
			fully_tilted = false;
		}
	}
	
	if (global.currentBottle != noone) {
		phy_position_x = position_to_x;
		phy_position_y = position_to_y;
	} 
}

