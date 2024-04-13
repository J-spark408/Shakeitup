if (!gamePaused && !instance_exists(CustomerList)) {
	gameState = StageStateHandler.StageState;
	StageStateHandler.StageState = GAMESTATE.Pause;
	gamePaused = true;
}