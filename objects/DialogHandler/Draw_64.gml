if (showing_dialog) {
	var text_x = 30;
	var text_y = room_height - sprite_get_height(current_dialog.sprite) + 18;
	var height = room_height - 32;
	var border = 5;
	var padding = 16;
	
	//height = string_height(current_dialog.message);
	
	//if (sprite_get_height(current_dialog.sprite) > height) {
	//	height = sprite_get_height(current_dialog.sprite);	
	//}
	
	height += padding * 2;
	text_x = sprite_get_width(current_dialog.sprite) + (padding * 2);
	
	draw_set_alpha(alpha);
	
	draw_set_color(c_black);
	draw_rectangle(0,(room_height - sprite_get_height(current_dialog.sprite)),display_get_gui_width(), height,false);
	
	draw_set_color(c_white);
	draw_rectangle(border,(room_height - sprite_get_height(current_dialog.sprite))+border,display_get_gui_width() - border, height - border, false);
	
	draw_set_color(c_black);
	draw_rectangle((border * 2),(room_height - sprite_get_height(current_dialog.sprite))+(border * 2), display_get_gui_width() - (border *2),height - (border * 2), false);
	
	if (current_dialog.sprite != noone) {
		draw_sprite(current_dialog.sprite,0,border * 3, room_height-sprite_get_height(current_dialog.sprite)-(border * 3));	
	}
	
	draw_set_color(c_white);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_font(fnt_dialog);
	draw_text_ext(text_x,text_y,textDisplayed,16,display_get_gui_width() - 192);
	
	alpha = lerp(alpha, 1, 0.06);
}

draw_set_alpha(1);