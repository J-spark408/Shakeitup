event_inherited();
 
if (global.current_stage == StageArrowHandler.stage_available) {
	show_message("ITS LOCKED");
	show_debug_message("the stage is locked");	
} else {
	randomize();
	global.currentState = MENUSTATE.GAME;
	room_goto(rm_game);
}