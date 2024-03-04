if ((game_data.timer < 1) && !game_data.shake_start) {
	draw_self();

	draw_set_font(fnt_menu);

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_text(x+135, y+40, interact_text);

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);


	draw_sprite_stretched(spr_button, image_index, x , y, (game_data.timer/max_fill_amount)*sprite_width,sprite_height)
}