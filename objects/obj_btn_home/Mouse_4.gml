global.currentState = MENUSTATE.STAGE;
StageStateHandler.StageState = GAMESTATE.Intro;
DeleteGameOverMenu();

room_goto(rm_stage_selection);