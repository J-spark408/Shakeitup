if (StageStateHandler.StageState == GAMESTATE.ChoiceOption) {
	StageStateHandler.StageState = GAMESTATE.Shaking;
	StageStateHandler.mixChoice = shaking;
	DeleteObjsStateChoice();
	CreateShakerMode();
}