if (keyboard_check_pressed(vk_escape) || (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,obj_back_button))) {
	room_goto_previous();
}