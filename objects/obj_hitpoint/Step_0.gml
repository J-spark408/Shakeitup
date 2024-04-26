if (!obj_hitpoint_bar.shaking_done && StageStateHandler.StageState != GAMESTATE.Pause) {
	y += vertical_speed * dir;
}

if (y <= position_from_y || y >= position_to_y && !obj_hitpoint_bar.shaking_done) {
	dir *= -1;	
}

