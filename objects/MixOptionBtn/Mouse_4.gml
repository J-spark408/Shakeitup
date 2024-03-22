if (StageStateHandler.StageState == GAMESTATE.Shaking) {
	DeleteObjsStateShaking();
	instance_destroy(obj_shaker_full);
	CreateStirringMode();
	instance_destroy(MixOptionBtn);
	StageStateHandler.StageState = GAMESTATE.Stirring;
	StageStateHandler.mixChoice = MixChoiceHandler.stirring;
} else if (StageStateHandler.StageState == GAMESTATE.Stirring) {
	DeleteObjsStateStirring();
	instance_destroy(obj_shaker_bot_filled);
	CreateShakerMode();
	instance_destroy(MixOptionBtn);
	StageStateHandler.StageState = GAMESTATE.Shaking;
	StageStateHandler.mixChoice = MixChoiceHandler.shaking;
}

