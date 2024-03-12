draw_set_color(c_white);
draw_set_font(fnt_start_timer);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

start_countdown = "";

start_countdown += string(t_sec);

if !(t_mil = 0 && t_sec = 1 && t_min = 0) {
	draw_text(room_width/2,room_height/2,start_countdown);
} 
