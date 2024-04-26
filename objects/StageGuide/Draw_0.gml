if (global.currentState == MENUSTATE.RECIPE && instance_exists(StageStateHandler)) {
	if (StageStateHandler.stagePassed) {
		draw_sprite(spr_block_background,0,x,y);
		if (!instance_exists(newRecipeArrow)) {
			instance_create_layer(obj_btn_recipe.x,obj_btn_recipe.y + 45, "Instances", newRecipeArrow);
		}
		draw_text(obj_btn_recipe.x,obj_btn_recipe.y + 160, "New Recipes!");
	}
}
if (global.menuOpened && global.currentState == MENUSTATE.GUIDE) {
	var widthPosition = 8/10;
	var heightPosition = 9/10;
	var positionGap = 150;
	
	for (var numOfGuides = 0; numOfGuides < ds_list_size(guideList); numOfGuides++) {
		if (numOfGuides == global.guidePage) {
			draw_sprite(ds_list_find_value(guideList,numOfGuides),0,room_width/2,room_height/2);
		}
	}
	
	if (global.guidePage == 0) {	
		if (instance_exists(ArrowLeft)) {
			instance_destroy(ArrowLeft);	
		}
		if (!instance_exists(ArrowRight)) {
			instance_create_layer(room_width*widthPosition,room_height*heightPosition,"PopUpMenu",ArrowRight);
			ArrowRight.image_speed = 0;
		}
	} else if (global.guidePage == 1) {
		if (instance_exists(ConfirmBtn)) {
			instance_destroy(ConfirmBtn)	
		}
		if (!instance_exists(ArrowLeft)) {
			instance_create_layer(room_width*widthPosition - positionGap,room_height*heightPosition,"PopUpMenu",ArrowLeft);
			ArrowLeft.image_speed = 0;
		}
		if (!instance_exists(ArrowRight)) {
			instance_create_layer(room_width*widthPosition,room_height*heightPosition,"PopUpMenu",ArrowRight);
			ArrowRight.image_speed = 0;
		}
	} else if (global.guidePage == 2) {
		instance_destroy(ArrowRight);
		if (!instance_exists(ConfirmBtn)) {
			instance_create_layer(room_width*widthPosition,room_height*heightPosition,"PopUpMenu",ConfirmBtn);	
			ConfirmBtn.image_speed = 0;
		}
		if (!instance_exists(ArrowLeft)) {
			instance_create_layer(room_width*widthPosition - positionGap,room_height*heightPosition,"PopUpMenu",ArrowLeft);
			ArrowLeft.image_speed = 0;
		}
	}
}