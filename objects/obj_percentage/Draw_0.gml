draw_set_font(fnt_menu);
draw_set_color(c_white);
//draw_text_ext(room_width-90,y+20, string_format(((obj_shaker_full.vertical_speed/obj_hitpoint_bar.set_goal_shake)*100),3,0) + string("%"), 3, 30);
draw_text_ext(x,y, string_format(obj_hitpoint_bar_stir.stir_percentage,3,2) + string("%"), 3, 30);