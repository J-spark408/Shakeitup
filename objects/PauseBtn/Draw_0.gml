draw_self();
if (paused) {
	instance_create_layer(room_width/2,room_height/2 - 225,"PauseMenu",pauseText);
	instance_create_layer(room_width/2,room_height/2 - 100,"PauseMenu",continueBtn);
	instance_create_layer(room_width/2,room_height/2 + 50,"PauseMenu",resetBtn);
	instance_create_layer(room_width/2,room_height/2 + 200,"PauseMenu",homeBtn);
	instance_create_layer(room_width/2,room_height/2,"PauseMenu",menuBoard);
}