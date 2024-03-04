current_stage = 0;
stage_availble = 0;
left_arrow_visible = false;
right_arrow_visible = true;


for (var i = 0; i < stage_data.stage_size; i++) {
	stage = ds_list_find_value(stage_data.stage_list, i);
	if (stage.stage_unlocked) {
		stage_availble++;	
	}
}

//show_debug_message(stage_availble)