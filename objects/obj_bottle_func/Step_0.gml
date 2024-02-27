if (is_grabbed && keyboard_check(ord("Q"))) {
	if (image_angle == -150) {
		image_angle -= 0;	
	} else {
		image_angle -= 3;	
	}
}
if (image_angle <= -105 && image_angle >= -150) {
	global._booze = physics_particle_create(flags, x, y, x+1, x, c_white, 1, game_data._index);
	game_data.is_poured = true;
}


if (is_grabbed && keyboard_check(ord("E"))) {
		if (image_angle == 150) {
		image_angle += 0;	
	} else {
		image_angle += 3;	
	}
}
if (image_angle >= 105 && image_angle <= 150) {
	global._booze = physics_particle_create(flags, x, y, 1-x, x, c_white, 1, game_data._index);
	game_data.is_poured = true;
}

//if (image_angle >= 110) {
//	global._booze = physics_particle_create(flags, x, y, 1-x, x, c_white, 1, index);
//	game_data.is_poured = true;
//	if (image_angle >= 200) {
//			image_angle -= 360;
//	}
//}

//if (image_angle <= -110) {
//	global._booze = physics_particle_create(flags, x, y, x+1, x, c_white, 1, index);
//	game_data.is_poured = true;
//	if (image_angle <= -200) {
//			image_angle += 360;
//	}
//}

if (mouse_check_button(mb_left) && position_meeting(mouse_x,mouse_y,game_data._get_obj)) {
	is_grabbed = true;
}

if (mouse_check_button_released(mb_left)) {
	is_grabbed = false;	
}

if (is_grabbed) {
	x = mouse_x;
	y = mouse_y;
}
