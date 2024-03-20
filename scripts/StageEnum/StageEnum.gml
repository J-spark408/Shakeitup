currentState = MENUSTATE.MAIN;

enum GAMESTATE {
	Intro,
	AddingIngredients,
	ChoosingIngredients,
	ChoiceOption,
	Shaking,
	Stirring,
	ShowCasing,
	ResetRound,
	StageOver
}

enum MENUSTATE {
	MAIN,
	STAGE,
	RECIPE,
	CONTROL,
	SETTING,
	GAME
}