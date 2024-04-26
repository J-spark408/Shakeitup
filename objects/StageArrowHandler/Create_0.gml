

left_arrow_visible = false;
right_arrow_visible = false;

if (global.currentState == MENUSTATE.STAGE || global.currentState == MENUSTATE.GUIDE || global.currentState == MENUSTATE.RECIPE) {
	stage_available = 0;
	for (var i = 0; i < StageData.stage_size; i++) {
		stage = ds_list_find_value(StageData.stage_list, i);
		if (stage.stage_unlocked) {
			stage_available++;	
		}
	}
}

function createStarCompletion() {
	draw_sprite(spr_starEmptyFilled,0,room_width/2-120,room_height*2/3 - 45);
	draw_sprite(spr_starEmptyFilled,0,room_width/2,room_height*2/3 - 25);
	draw_sprite(spr_starEmptyFilled,0,room_width/2+120,room_height*2/3 - 45);
	
	for (numOfStages = 0; numOfStages < StageData.stage_size; numOfStages++) {
		currentStage = ds_list_find_value(StageData.stage_list,numOfStages);
		if (currentStage.stage_level == global.current_stage){
			if (currentStage.stage_completion == 3) {
				draw_sprite(spr_starFiller,0,room_width/2-120,room_height*2/3 - 45);
				draw_sprite(spr_starFiller,0,room_width/2,room_height*2/3 - 25);
				draw_sprite(spr_starFiller,0,room_width/2+120,room_height*2/3 - 45);
			} else if (currentStage.stage_completion == 2) {
				draw_sprite(spr_starFiller,0,room_width/2-120,room_height*2/3 - 45);
				draw_sprite(spr_starFiller,0,room_width/2,room_height*2/3 - 25);
			} else if (currentStage.stage_completion == 1){
				draw_sprite(spr_starFiller,0,room_width/2-120,room_height*2/3 - 45);
			}
		}
	}
}
//show_debug_message(stage_availble)