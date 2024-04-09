global.current_stage = 0;

left_arrow_visible = false;
right_arrow_visible = true;

if (global.currentState == MENUSTATE.STAGE) {
	stage_available = 0;
	show_debug_message(stage_available);
	for (var i = 0; i < StageData.stage_size; i++) {
		stage = ds_list_find_value(StageData.stage_list, i);
		if (stage.stage_unlocked) {
			stage_available++;	
		}
	}
	show_debug_message(stage_available);
}

//show_debug_message(stage_availble)