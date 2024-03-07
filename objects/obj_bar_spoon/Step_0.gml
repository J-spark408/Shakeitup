//if (mouse_check_button(mb_left) && position_meeting(mouse_x,mouse_y,obj_bar_spoon)) {
//	image_angle += 1 * dir;
//	y += 0.5 * dir;
//	x -= 8 * dir;
//	if (image_angle == 10 || image_angle == -10) {
//		dir *= -1
//	}
//}

if (mouse_check_button(mb_left) && position_meeting(mouse_x,mouse_y,obj_stir_point)) {
	is_grabbed = true;
}
if (mouse_check_button_released(mb_left)) {
	is_grabbed = false;
	draw_hand = false;
	instance_destroy(obj_stir_hand);	
}

if (is_grabbed && !draw_hand) {
	instance_create_layer(obj_bar_spoon.x,obj_bar_spoon.y,"Instances",obj_stir_hand);
	draw_hand = true;
}

if (mouse_check_button(mb_left) && position_meeting(mouse_x,mouse_y,obj_stir_point)) {
	x += 4 * dir;
	obj_stir_hand.x += 4 * dir;
	obj_stir_point.x += 4 * dir;
	image_angle -= 0.4 * dir;
	if (position_meeting(541,210,obj_stir_hand) || (position_meeting(952,210,obj_stir_hand))) {
		dir *= -1;
		timed_stir += hit_stir;
	}
}



//if (is_grabbed) {
//	x += 4 * dir;
//	obj_hit_stir.x += 4 * dir;
//	image_angle -= 0.4 * dir;
//	if (position_meeting(541,210,obj_hit_stir) || (position_meeting(952,210,obj_hit_stir))) {
//		dir *= -1;
//	}
//	//if (position_meeting(847,280,obj_bar_spoon)) {
//	//	image_angle = 2.5 * dir;
//	//	dir *= -1;
//	//}
	
//}


//if (is_grabbed) {
//	image_angle += 1 * dir;
//	y += 0.5 * dir;
//	x -= 8 * dir;
//	if (image_angle == 10 || image_angle == -10) {
//		dir *= -1
//	}
//}