if (StageStateHandler.timer < 1) {
	draw_self();

	draw_set_font(fnt_dialog);

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_white);
	draw_text(x+135, y+40, interact_text);

	draw_set_halign(fa_left);
	draw_set_valign(fa_top);


	draw_sprite_stretched(spr_button, image_index, x , y, (StageStateHandler.timer/max_fill_amount)*sprite_width,sprite_height)
}