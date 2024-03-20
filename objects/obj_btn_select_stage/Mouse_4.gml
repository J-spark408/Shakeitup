event_inherited();

if (global.current_stage == global.stage_availble) {
	show_message("ITS LOCKED");
	show_debug_message("the stage is locked");	
} else {
	global.currentState = MENUSTATE.GAME;
	room_goto(rm_game);
}