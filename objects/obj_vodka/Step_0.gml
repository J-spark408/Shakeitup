if (keyboard_check(ord("Q"))) {
	image_angle += 3;
}

if (keyboard_check(ord("E"))) {
	image_angle -= 3;
}

if (image_angle >= 110) {
	global._booze = physics_particle_create(flags, x, y, 1-x, x, c_white, 1, 1);

	if (image_angle >= 200) {
			image_angle -= 360;
	}
}

if (image_angle <= -110) {
	global._booze = physics_particle_create(flags, x, y, x+1, x, c_white, 1, 1);
	if (image_angle <= -200) {
			image_angle += 360;
	}
}

if (mouse_check_button(mb_left) && position_meeting(mouse_x,mouse_y,obj_vodka)) {
	is_grabbed = true;
}

if (mouse_check_button_released(mb_left)) {
	is_grabbed = false;	
}

if (is_grabbed) {
	x = mouse_x;
	y = mouse_y;
}

if (place_meeting(x,y,obj_jigger_2oz)) {
	obj_jigger_2oz.fill_level += 1;	
}

//if (mouse_check_button(mb_left)) {
//	is_grabbed = true;	
//	depth = -1;
	
//	xx = x - mouse_x;
//	yy = y - mouse_y;
//}

//if (mouse_check_button_released(mb_left)) {
//	is_grabbed = false;	
//	depth = 0;
//}

//if (is_grabbed) {
//	x = mouse_x + xx;
//	y = mouse_y + yy;
//}
