if (position_meeting(mouse_x, mouse_y,StageTabButtonBox3) && StageStateHandler.StageState != GAMESTATE.Pause && !instance_exists(CustomerList)) {
	if (image_index <= 5) {
		image_speed++;	
		
	} else {
		image_speed = 0;	
	}
} else {
	image_index = 0;	
}