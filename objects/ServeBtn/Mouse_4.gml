if (!instance_exists(ModeGarnish) && !GarnishHandler.chooseGarnish) {
	StageStateHandler.StageState = GAMESTATE.ShowCasing;
	StageStateHandler.serving = true;
	StageStateHandler.objectCheckCreate = false;
	instance_destroy(ServeBtn);
}