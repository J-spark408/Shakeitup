if (global.currentState == MENUSTATE.GUIDE && StageStateHandler.stagePassed) {
	if (!instance_exists(newRecipeArrow)) {
		instance_create_layer(obj_btn_recipe.x,obj_btn_recipe.y + 45, "Instances", newRecipeArrow);
	}
	draw_text(obj_btn_recipe.x,obj_btn_recipe.y + 160, "New Recipes!");
}

//if (!global.createBeginnerGuide) {
//	instance_create_layer(room_width/2,room_height/2,"PopUpMenu",GameGuideBox);
//	global.createBeginnerGuide = true;
//}