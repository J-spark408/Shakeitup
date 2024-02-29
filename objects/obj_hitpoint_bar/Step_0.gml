if (keyboard_check_pressed(vk_space)) {
	if (position_meeting(x + 11, y + 13, obj_hitpoint) ||
		position_meeting(x + 11, y + 298, obj_hitpoint)) {
		is_shaking = true;
		obj_shaker_full.vertical_speed += 2;
		obj_shaker_full.rotate_speed = 1;
		check_hitpoint = 0;
	} else if (position_meeting(x + 11, y + 31, obj_hitpoint) ||
		position_meeting(x + 11, y + 280, obj_hitpoint)) {
		is_shaking = true;
		obj_shaker_full.vertical_speed += 1;
		obj_shaker_full.rotate_speed = 1;
		check_hitpoint = 1;
	} else if (is_shaking && obj_shaker_full.vertical_speed > 0) {
			obj_shaker_full.vertical_speed--;
			check_hitpoint = 2;
			miss_count++;
		if (obj_shaker_full.vertical_speed == 0) {
			obj_shaker_full.rotate_speed = 0;
		}
	}
	instance_create_layer(obj_hitpoint.x,obj_hitpoint.y,"Instances",obj_show_hit);
	show_debug_message(obj_shaker_full.vertical_speed);
	if (obj_shaker_full.vertical_speed >= set_goal_shake) {
		show_debug_message("Finish shaking");
		//destroy instances except shaker
		//set shaker in x,y position
		//Go to choose glass selection room	
	}
}
