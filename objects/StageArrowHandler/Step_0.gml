if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,obj_select_left)) {
	global.current_stage--;
	show_debug_message(global.current_stage)
}
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,obj_select_right)) {
	global.current_stage++;
	show_debug_message(global.current_stage)
}
