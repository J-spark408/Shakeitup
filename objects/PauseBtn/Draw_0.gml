draw_self();
if (gamePaused) {
	instance_create_layer(room_width/2,room_height/2 - 225,"PauseMenu",pauseText);
	instance_create_layer(room_width/2,room_height/2 - 100,"PauseMenu",continueBtn);
	instance_create_layer(room_width/2,room_height/2 + 20,"PauseMenu",retryBtn);
	instance_create_layer(room_width/2,room_height/2 + 140,"PauseMenu",homeBtn);
	instance_create_layer(room_width/2,room_height/2,"PauseMenu",menuBoard);
}