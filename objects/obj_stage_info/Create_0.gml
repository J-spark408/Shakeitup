global.current_stage = 0;
global.stage_availble = 0;
left_arrow_visible = false;
right_arrow_visible = true;

for (var i = 0; i < stage_data.stage_size; i++) {
	stage = ds_list_find_value(stage_data.stage_list, i);
	if (stage.stage_unlocked) {
		global.stage_availble++;	
	}
}

//show_debug_message(stage_availble)