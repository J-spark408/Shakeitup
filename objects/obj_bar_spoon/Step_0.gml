if (mouse_check_button(mb_left) && position_meeting(mouse_x,mouse_y,obj_bar_spoon)) {
	image_angle += 1 * dir;
	y += 0.5 * dir;
	x -= 8 * dir;
	if (image_angle == 10 || image_angle == -10) {
		dir *= -1
	}
}

if (mouse_check_button_released(mb_left)) {
	is_grabbed = false;	
}

//if (is_grabbed) {
//	image_angle += 1 * dir;
//	y += 0.5 * dir;
//	x -= 8 * dir;
//	if (image_angle == 10 || image_angle == -10) {
//		dir *= -1
//	}
//}