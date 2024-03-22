
if (instance_exists(obj_bar_spoon)) {
	timer += delta_time/1000000;	
}
if (timed_stir >= 0 && timer >= 3) {
	timed_stir -= lose_stir;
	show_debug_message(lose_stir);
	timer = 0;
}
if (mouse_check_button(mb_left) && position_meeting(mouse_x,mouse_y,obj_stir_point)) {
	is_grabbed = true;
	timed_stir += hit_stir;
	show_debug_message(timed_stir);
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
	if (position_meeting(531,210,obj_stir_hand) || (position_meeting(952,210,obj_stir_hand))) {
		dir *= -1;
		timer = 0;
	}
}

if (timed_stir >= 100) {
	timer = 0;
	DeleteObjsStateStirring();
	instance_destroy(MixOptionBtn);
	StageStateHandler.StageState = GAMESTATE.ShowCasing;
	StageStateHandler.objectCheckCreate = false;
}