
if (0 < global.stage_availble) {
	stage = ds_list_find_value(stage_data.stage_list,global.current_stage);
	if (stage.stage_unlocked) {
		draw_sprite(stage.stage_sprite, 0, 683, 389)
	} else {
		stage = ds_list_find_value(stage_data.stage_list, stage_data.stage_size);
		draw_sprite(stage.stage_sprite, 0, 683, 389)
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
if (global.current_stage == global.stage_availble && right_arrow_visible) {
	instance_destroy(obj_select_right);
	right_arrow_visible = false;
}
else if (global.current_stage != global.stage_availble && !right_arrow_visible){
	instance_create_layer(1088, 373, "Instances", obj_select_right);
	right_arrow_visible = true;
}
