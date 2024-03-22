draw_set_color(c_white);
draw_set_font(fnt_round_timer);
draw_set_valign(fa_top);
draw_set_halign(fa_center);


if !(t_mil = 0 && t_sec = 0 && t_min = 0) {
	draw_text(room_width/2,y+20,game_countdown);
}

game_countdown = "";
if (t_min != 0) {
	game_countdown += string(t_min);
	game_countdown += ":";
}
if (t_sec > 9) {
	game_countdown += "" + string(t_sec)
	if (t_sec < 30 && t_min = 0) {
		game_countdown += "." + string(t_mil);
	}
}
if (t_min >= 1 && t_sec < 10) {
	game_countdown += "0";
	game_countdown += string(t_sec);
} else if (t_sec < 10 && t_min == 0) {
	game_countdown += string(t_sec);
	game_countdown += "." + string(t_mil);
}

