if (instance_exists(menuBoard)) {
	draw_set_halign(fa_center)
	draw_set_valign(fa_middle)
	draw_set_font(fnt_completion_text)
	draw_set_color(c_yellow)
	draw_text(room_width/2, room_height/2 - 160, StageStateHandler.completionMessage);
}