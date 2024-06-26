draw_self();
//draw_text(755,180,obj_page_detail.RecipePage_text)
//draw_sprite(spr_martini_img, 0, 448, 352)
//draw_text(400,570,obj_page_detail.RecipePage_name);

var recipepage = ds_list_find_value(PageDetailList.RecipePage_list,current_page);
if (!is_flipping) {
	//for (var i = 0; i < ds_list_size(obj_page_detail.RecipePage_list); i += 1) {
		//RecipePage = ds_list_find_value(obj_page_detail.RecipePage_list,current_page);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	draw_set_color(c_maroon);
	draw_set_font(fnt_recipe_detail);
	draw_text(room_width/2 + 50,180,recipepage.RecipePage_detail)
	draw_sprite(recipepage.RecipePage_sprite, 0, 448, 332)
	draw_text(300,560,recipepage.RecipePage_name);
	//}
}

if (current_page == 0 && instance_exists(PrevPageObj)) {
	instance_destroy(PrevPageObj);
} else if (current_page > 0 && !instance_exists(PrevPageObj) ) {
	instance_create_layer(room_width*1/4,room_height*7/8,"Instances",PrevPageObj);	
} else if (current_page == ds_list_size(PageDetailList.RecipePage_list)-1 && instance_exists(NextPageObj)) {
	instance_destroy(NextPageObj);	
} else if (current_page < ds_list_size(PageDetailList.RecipePage_list)-1 && !instance_exists(NextPageObj)) {
	instance_create_layer(room_width*2/3,room_height*7/8,"Instances",NextPageObj);	
}
