if (StageStateHandler.StageState == GAMESTATE.AddGarnish && !GarnishHandler.chooseGarnish) {
	if (!instance_exists(ModeGarnish)) {
		instance_create_layer(room_width/2,room_height*3/4 + 10,"Instances",ModeGarnish);
	} 
}