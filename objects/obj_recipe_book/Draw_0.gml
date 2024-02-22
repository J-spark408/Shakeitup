draw_self();
//draw_text(755,180,obj_page_detail.recipe_text)
//draw_sprite(spr_martini_img, 0, 448, 352)
//draw_text(400,570,obj_page_detail.recipe_name);

recipe = ds_list_find_value(obj_page_detail.recipe_list,current_page);
if (!is_flipping) {
	//for (var i = 0; i < ds_list_size(obj_page_detail.recipe_list); i += 1) {
		//recipe = ds_list_find_value(obj_page_detail.recipe_list,current_page);
	draw_set_color(c_maroon);
	draw_set_font(fnt_recipe_detail);
	draw_text(755,180,recipe.recipe_detail)
	draw_sprite(recipe.recipe_sprite, 0, 448, 332)
	draw_text(300,560,recipe.recipe_name);
	//}
}