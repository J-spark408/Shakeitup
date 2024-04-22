global.current_stage = 0;

left_arrow_visible = false;
right_arrow_visible = false;

if (global.currentState == MENUSTATE.STAGE || global.currentState == MENUSTATE.GUIDE) {
	stage_available = 0;
	for (var i = 0; i < StageData.stage_size; i++) {
		stage = ds_list_find_value(StageData.stage_list, i);
		if (stage.stage_unlocked) {
			stage_available++;	
		}
	}
}

//show_debug_message(stage_availble)