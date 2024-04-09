draw_self();
//draw_text(755,180,obj_page_detail.RecipePage_text)
//draw_sprite(spr_martini_img, 0, 448, 352)
//draw_text(400,570,obj_page_detail.RecipePage_name);

var recipepage = ds_list_find_value(PageDetailList.RecipePage_list,current_page);
if (!is_flipping) {
	//for (var i = 0; i < ds_list_size(obj_page_detail.RecipePage_list); i += 1) {
		//RecipePage = ds_list_find_value(obj_page_detail.RecipePage_list,current_page);
	draw_set_color(c_maroon);
	draw_set_font(fnt_recipe_detail);
	draw_text(room_width/2 + 50,180,recipepage.RecipePage_detail)
	draw_sprite(recipepage.RecipePage_sprite, 0, 448, 332)
	draw_text(300,560,recipepage.RecipePage_name);
	//}
}