event_inherited();

if (global.current_stage == global.stage_availble) {
	show_message("ITS LOCKED");
	show_debug_message("the stage is locked");	
} else {
	room_goto(rm_game);
	if (instance_exists(game_data)) {
		game_data.round_timer_over = false;
		game_data.game_start = false;
		game_data.new_round = false;
	}
}