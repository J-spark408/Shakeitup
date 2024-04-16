draw_self();
if (gamePaused) {
	instance_create_layer(room_width/2,room_height/2 - 225,"PopUpMenu",pauseText);
	instance_create_layer(room_width/2,room_height/2 - 100,"PopUpMenu",continueBtn);
	instance_create_layer(room_width/2,room_height/2 + 20,"PopUpMenu",retryBtn);
	instance_create_layer(room_width/2,room_height/2 + 140,"PopUpMenu",homeBtn);
	instance_create_layer(room_width/2,room_height/2,"PopUpMenu",menuBoard);
}