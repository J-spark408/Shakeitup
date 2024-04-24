if (global.currentState == MENUSTATE.STAGE || global.currentState == MENUSTATE.GUIDE) {
	if (0 < stage_available) {
		stage = ds_list_find_value(StageData.stage_list,global.current_stage);
		draw_sprite(spr_select_backboard, 0, room_width/2, room_height/2);
		if (stage.stage_unlocked) {
			draw_sprite(stage.stage_sprite, 0, room_width/2, room_height/2)		
			if (stage.stage_level != StageData.stage_size) {
				createStarCompletion();
			}
		} else {
			//stage = ds_list_find_value(StageData.stage_list, StageData.stage_size);
			draw_sprite(spr_stage_lock, 0, room_width/2, room_height/2);
		}
	}
	if (global.current_stage == 0 && left_arrow_visible) {
		instance_destroy(obj_select_left);
		left_arrow_visible = false;
	}
	else if (global.current_stage == 0 && !instance_exists(obj_select_right)) {
		instance_create_layer(room_width*3/4, room_height/2, "Instances", obj_select_right);
		right_arrow_visible = true;
	}
	else if (global.current_stage != 0 && !left_arrow_visible) {
		instance_create_layer(room_width*1/4, room_height/2, "Instances", obj_select_left);		 
		left_arrow_visible = true;
	}
	if (global.current_stage == stage_available && right_arrow_visible) {
		instance_destroy(obj_select_right);
		right_arrow_visible = false;
	}
	else if (global.current_stage != stage_available && !right_arrow_visible){
		instance_create_layer(room_width*3/4, room_height/2, "Instances", obj_select_right);
		right_arrow_visible = true;
	}
}