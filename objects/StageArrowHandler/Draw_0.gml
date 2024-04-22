if (global.currentState == MENUSTATE.STAGE) {
	if (0 < stage_available) {
		stage = ds_list_find_value(StageData.stage_list,global.current_stage);
		if (stage.stage_unlocked) {
			draw_sprite(stage.stage_sprite, 0, 683, 389)
		} else {
			//stage = ds_list_find_value(StageData.stage_list, StageData.stage_size);
			draw_sprite(spr_stage_lock, 0, 683, 389)
		}
	}
	if (global.current_stage == 0 && left_arrow_visible) {
		instance_destroy(obj_select_left);
		left_arrow_visible = false;
	} 
	else if (global.current_stage != 0 && !left_arrow_visible) {
		instance_create_layer(282, 373, "Instances", obj_select_left);		 
		left_arrow_visible = true;
	}
	if (global.current_stage == stage_available && right_arrow_visible) {
		instance_destroy(obj_select_right);
		right_arrow_visible = false;
	}
	else if (global.current_stage != stage_available && !right_arrow_visible){
		instance_create_layer(1088, 373, "Instances", obj_select_right);
		right_arrow_visible = true;
	}
}