global.currentState = MENUSTATE.STAGE;
StageStateHandler.StageState = GAMESTATE.Intro;
ResetGameForResetHomeMenu();

if (StageStateHandler.stagePassed) {
	global.currentState = MENUSTATE.GUIDE;
}

room_goto(rm_stage_selection);