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
	RecipePage,
	CONTROL,
	SETTING,
	GAME
}