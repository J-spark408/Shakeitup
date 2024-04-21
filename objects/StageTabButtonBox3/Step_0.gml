if (position_meeting(mouse_x, mouse_y,StageTabButtonBox3) && StageStateHandler.StageState != GAMESTATE.Pause && !instance_exists(CustomerList)) {
	if (image_index <= 7) {
		image_speed = 5;	
		
	} else {
		image_speed = 0;	
	}
} else {
	image_index = 0;	
}