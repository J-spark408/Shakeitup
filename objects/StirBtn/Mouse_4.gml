if (StageStateHandler.StageState == GAMESTATE.ChoiceOption) {
	StageStateHandler.StageState = GAMESTATE.Stirring;
	StageStateHandler.mixChoice = stirring;
	DeleteObjsStateChoice();
	CreateStirringMode();
}