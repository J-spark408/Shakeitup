
if (game_data.StageState = GAMESTATE.Shaking) {
	if (keyboard_check_pressed(vk_space) && !shaking_done) {
		CheckHitPoint();
		//if (position_meeting(x + 22, y + 13, obj_hitpoint) ||
		//	position_meeting(x + 22, y + 298, obj_hitpoint)) {
		//	//is_shaking = true;
		//	obj_shaker_full.vertical_speed += 2;
		//	obj_shaker_full.rotate_speed = 1;
		//	check_hitpoint = 0;
		//} else if (position_meeting(x + 22, y + 31, obj_hitpoint) ||
		//	position_meeting(x + 22, y + 280, obj_hitpoint)) {
		//	//is_shaking = true;
		//	obj_shaker_full.vertical_speed += 1;
		//	obj_shaker_full.rotate_speed = 1;
		//	check_hitpoint = 1;
		//} else if (is_shaking && obj_shaker_full.vertical_speed > 0) {
		//	obj_shaker_full.vertical_speed--;
		//	check_hitpoint = 2;
		//	miss_count++;
		//	if (obj_shaker_full.vertical_speed == 0) {
		//		obj_shaker_full.rotate_speed = 0;
		//		//is_shaking = false;
		//	}
		//}
	
		instance_create_layer(obj_hitpoint.x,obj_hitpoint.y,"Instances",obj_show_hit);
		if (obj_shaker_full.vertical_speed >= set_goal_shake) {// && !shaking_done) {
			shaking_done = true;
			obj_shaker_full.vertical_speed = 0;
			obj_shaker_full.rotate_speed = 0;
			//game_data.shake_done = true;
			game_data.StageState = GAMESTATE.ShowCasing;
			game_data.objectCheckCreate = false;
		}
	}
}