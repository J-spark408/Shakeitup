if (position_meeting(mouse_x,mouse_y,obj_hit_stir)) {
	
	theta += theta_speed;
	x = cx + lengthdir_x(r, theta);
	y = cy + lengthdir_y(r , theta);
	
}