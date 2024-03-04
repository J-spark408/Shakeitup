if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,obj_select_left)) {
	current_stage--;
}
if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,obj_select_right)) {
	current_stage++;
}