if (global.currentState == MENUSTATE.GUIDE && StageStateHandler.stagePassed) {
	if (!instance_exists(newRecipeArrow)) {
		instance_create_layer(obj_btn_recipe.x,obj_btn_recipe.y + 45, "Instances", newRecipeArrow);
	}
	draw_text(obj_btn_recipe.x,obj_btn_recipe.y + 160, "New Recipes!");
}