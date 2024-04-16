if (keyboard_check_pressed(vk_escape) && !gamePaused && !instance_exists(CustomerList)) {		
	gameState = StageStateHandler.StageState;
	StageStateHandler.StageState = GAMESTATE.Pause;
	gamePaused = true;
}