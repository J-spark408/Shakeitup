var hover = point_in_rectangle(mouse_x, mouse_y, bbox_left, bbox_top, bbox_right, bbox_bottom);

if (global.currentState == MENUSTATE.STAGE) {
	if (hover == 1) {
		image_xscale = lerp(image_xscale, start_scale_max, stretch_speed);	
		image_yscale = lerp(image_yscale, start_scale_max, stretch_speed);
		image_alpha = 0.8;
	} else {
		image_xscale = lerp(image_xscale, start_scale, stretch_speed);	
		image_yscale = lerp(image_yscale, start_scale, stretch_speed);
		image_alpha = 1;
	}
}