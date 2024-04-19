if (!gamePaused && !instance_exists(CustomerList)) {
	gameState = StageStateHandler.StageState;
	StageStateHandler.StageState = GAMESTATE.Pause;
	image_index = 1;
	gamePaused = true;
}
