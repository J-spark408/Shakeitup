draw_self();
draw_set_valign(fa_middle)
draw_set_font(fnt_cheat_book);

if (instance_exists(CheatSheet) && StageStateHandler.StageState != GAMESTATE.Pause) {
	var currentStage = ds_list_find_value(StageData.stage_list,global.current_stage);
	for (var drinkList = 0; drinkList < ds_list_size(currentStage.stageDrinkList); drinkList++) {
	var getDrink = ds_list_find_value(currentStage.stageDrinkList, drinkList);	
		for (var recipeList = 0; recipeList < ds_list_size(PageDetailList.RecipePage_list); recipeList++) {
			var getRecipeList = ds_list_find_value(PageDetailList.RecipePage_list,recipeList) 
			if (getDrink == getRecipeList.RecipePage_name) {
				draw_set_halign(fa_center)
				draw_text(room_width*(drinkList+1)/4,room_height/2 - 135, getRecipeList.RecipePage_name);
				draw_set_halign(fa_left)
				draw_text(room_width*(drinkList+1)/4 - 110,room_height/2, getRecipeList.RecipePage_detail);
				
			}
		}
	}	
}