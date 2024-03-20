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
	//x += horizontal_speed * dir_x;
	//y += vertical_speed * dir_y;
	
	//if (x == position_to_x && y == position_to_y) {
	//	dir_x *= 0;	
	//	dir_y *= 0;
	//}
	//	phy_position_x += horizontal_speed;
	//	phy_position_y -= vertical_speed;
	//if (phy_position_x >= position_to_x && phy_position_y <= position_to_y) {
	//	horizontal_speed *= 0;
	//	vertical_speed *= 0;
		if (phy_rotation <= 110) {
			phy_rotation += 1;
		} else {
			phy_rotation += 0;	
			fully_tilted = true;		
		}
		//phy_position_x += horizontal_speed;
		//phy_position_y -= vertical_speed;
		//show_debug_message(phy_position_x, position_to_x);
		//show_debug_message(phy_position_y, position_to_y);		
	}
	
	//if (phy_position_x >= position_to_x && phy_position_y <= position_to_y) {
	//		phy_rotation += 2;
	//		show_debug_message(phy_position_x)
	//}
//}

if (fully_tilted) {
	if (keyboard_check(ord("R"))) {
		phy_rotation = 0;
		phy_position_x = position_to_x;
		phy_position_y = position_to_y;
		//horizontal_speed = 1;
		//vertical_speed = 1;
		fully_tilted = false;
	}
}

if (StageStateHandler._get_obj != noone) {
	phy_position_x = position_to_x;
	phy_position_y = position_to_y;
}