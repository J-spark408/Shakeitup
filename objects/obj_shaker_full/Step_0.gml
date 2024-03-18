
if (game_data.StageState == GAMESTATE.Shaking) {
	y += vertical_speed * dir_y;
	image_angle -= rotate_speed * dir;
}
//image_angle -= rotate_speed * dir_y;


if (y < position_from_y || y > position_to_y) {
	dir_y *= -1;	
	
}

if (image_angle == 50 || image_angle == -50) {
	dir *= -1;
} 
