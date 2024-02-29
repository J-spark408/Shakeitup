draw_set_font(fnt_pop_message);

switch(obj_hitpoint_bar.check_hitpoint) {
	case 0:
		draw_set_color(c_green);
		draw_text_ext(x,y, string("Perfect"), 2, 30);
		break;
	case 1:
		draw_set_color(c_yellow);
		draw_text_ext(x,y, string("Good"), 2, 30);
		break;
	case 2:
		draw_set_color(c_red);
		draw_text_ext(x,y, string("Miss"), 2, 30);
		break;
}
