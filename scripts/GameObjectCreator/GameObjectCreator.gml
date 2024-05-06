// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function CreateJigAndShaker() {
	instance_create_layer(508,544,"Instances",obj_jigger_2oz);
	instance_create_layer(540,416,"Instances",obj_shaker_bot);
}

function DeleteTabDisplayed() {
	if (room = rm_game) {
		instance_destroy(StageTabButtonBox1);
		instance_destroy(StageTabButtonBox2);
		instance_destroy(StageTabButtonBox3);
		StageDisplayTab.tabsCreated = false;
	}
}

function DeleteObjsStateAddIngredients() {
	if (instance_exists(BottleHandler.bottleObj)) {
		instance_destroy(BottleHandler.bottleObj);
	}
	instance_destroy(obj_jigger_2oz);
	instance_destroy(obj_jigger_1oz);	
	
	instance_destroy(IceBucket);
	instance_destroy(IceScoop);
	instance_destroy(Ice);
	instance_destroy(obj_shaker_bot);
	instance_destroy(obj_interact_shakeit);
	DeleteTabDisplayed();
}

function DeleteObjsStateChoice() {
	instance_destroy(ShakeBtn);
	instance_destroy(StirBtn);
	DeleteTabDisplayed();
}

function DeleteObjsStateShaking() {
	instance_destroy(obj_show_hit);
	instance_destroy(obj_hitpoint);
	instance_destroy(obj_hitpoint_bar);
}

function DeleteObjsStateStirring() {
	instance_destroy(obj_bar_spoon);
	instance_destroy(obj_stir_point);
	instance_destroy(obj_stir_hand);
}

function DeleteObjsStateShowCasing() {
	instance_destroy(obj_shaker_full_no_cap);
	instance_destroy(obj_shaker_cap);
	instance_destroy(MixOptionBtn);
	//instance_destroy(StageStateHandler.currentDrink.GlassType);
	
	
	//if (StageStateHandler.StageState == GAMESTATE.ResetRound || StageStateHandler.StageState == GAMESTATE.StageOver) {
	//	for (var numOfRecipe = 0; numOfRecipe < ds_list_size(RecipeChecker.recipe_list); numOfRecipe++) {
	//		currentRecipe = ds_list_find_value(RecipeChecker.recipe_list, numOfRecipe);
	//		if (drinkToMake = currentRecipe.RecipeName && instance_exists(currentRecipe.GlassType)) {
	//			instance_destroy(currentRecipe.GlassType);
	//		}
	//	}
	//}
}

function DeleteObjsStateAddGarnish() {
	instance_destroy(ModeGarnish);	
	instance_destroy(GarnishIce);
	instance_destroy(GarnishLemon);
	instance_destroy(GarnishLime);
	instance_destroy(GarnishOrange);
	instance_destroy(GarnishCherry);
	instance_destroy(GarnishOlive);
	instance_destroy(Ice);
	instance_destroy(Lemon);
	instance_destroy(Lime);
	instance_destroy(Orange);
	instance_destroy(Cherry);
	instance_destroy(Olive);
	instance_destroy(StageStateHandler.currentDrinkGlass);
	instance_destroy(ServeBtn);
}

function DeleteProps() {
	instance_destroy(StageTabDescriptionBox);
	instance_destroy(PauseBtn);
	instance_destroy(CustomerList);
	instance_destroy(IceBucket);
	instance_destroy(TrashBin);
	instance_destroy(IceScoop);
	instance_destroy(MixOptionBtn);
	instance_destroy(CheatBook);
	instance_destroy(CheatSheet);
}

function DeleteAllForStageOver() {
	instance_destroy(obj_shaker_bot_filled);
	instance_destroy(obj_shaker_full);
	DeleteObjsStateAddIngredients()
	DeleteObjsStateChoice();
	DeleteObjsStateShaking();
	DeleteObjsStateStirring();
	DeleteObjsStateStirring();
	DeleteObjsStateShowCasing();
	DeleteObjsStateAddGarnish();
	DeleteProps();
	DeleteTabDisplayed();
}

function ResetRoundMode() {
	physics_particle_delete_region_box(0,0,room_width,room_height);
	instance_create_layer(508,544,"Instances",obj_jigger_2oz);
	instance_create_layer(540,416,"Instances",obj_shaker_bot);
	// if physics particle exists draw interact
	instance_create_layer(1056,672,"Instances",obj_interact_shakeit);
	StageStateHandler.StageState = GAMESTATE.AddingIngredients;
}

function CreateShakeOrStirOption() {
	DeleteObjsStateAddIngredients();
	physics_particle_delete_region_box(0,0,room_width,room_height);
	StageState = GAMESTATE.ChoiceOption;
	instance_create_layer(room_width*1/3, room_height/2,"Instances",ShakeBtn);
	instance_create_layer(room_width*2/3, room_height/2,"Instances",StirBtn);
}

function CreateShakerMode(){
	//physics_particle_delete_region_box(0,0,room_width,room_height);
	if (!instance_exists(obj_shaker_full)) {
		instance_create_layer(640, 288,"Instances",obj_shaker_full);
		instance_create_layer(room_width*1/4, room_height/2,"Instances",obj_hitpoint_bar);
		instance_create_layer(obj_hitpoint_bar.x,obj_hitpoint_bar.y,"Instances",obj_hitpoint);
	//instance_create_layer(room_width-50, y+50, "Instances", obj_percentage);
	}
	DeleteObjsStateAddIngredients();
	StageStateHandler.objectCheckCreate = true;
}

function CreateStirringMode() {
	//physics_particle_delete_region_box(0,0,room_width,room_height);
	if (!instance_exists(obj_shaker_bot_filled)) {
		instance_create_layer(640, 416,"Instances",obj_shaker_bot_filled);
		instance_create_layer(726, 301,"Instances",obj_bar_spoon);
		instance_create_layer(705, 297,"Instances",obj_stir_point);
	}
	DeleteObjsStateAddIngredients();
	StageStateHandler.objectCheckCreate = true;
}

function CreateShowCasingObjects() {
	if (mixChoice == MixChoiceHandler.shaking) {
		DeleteObjsStateShaking();
	}
	if (mixChoice == MixChoiceHandler.stirring) {
		DeleteObjsStateStirring();
	}
	DeleteTabDisplayed();
	//if (currentDrink == "Martini" && !instance_exists(MartiniGlass)) {
	//	instance_create_layer(320,352,"Instances",MartiniGlass);
	//}
	//if (currentDrink == "Old Fashioned" && !instance_exists(RockGlass)) {
	//	instance_create_layer(370,352,"Instances",RockGlass);
	//}
	for (var numOfRecipe = 0; numOfRecipe < ds_list_size(RecipeChecker.recipe_list); numOfRecipe++) {
		currentRecipe = ds_list_find_value(RecipeChecker.recipe_list, numOfRecipe);
		if (drinkToMake = currentRecipe.RecipeName && !instance_exists(currentRecipe.GlassType)) {
			if (currentDrink.GlassType == MartiniGlass) {
				instance_create_layer(325,352,"Instances",currentRecipe.GlassType);
			} else {
				instance_create_layer(355,502,"Instances",currentRecipe.GlassType);
			}
			StageStateHandler.currentDrinkGlass = currentRecipe.GlassType;
			StageStateHandler.currentDrinkColor = currentRecipe.LiquidColor;
		}
	}
}

function DeletePopupMenu() {
	instance_destroy(homeBtn);
	instance_destroy(retryBtn);
	instance_destroy(menuText);
	instance_destroy(menuBoard);
	instance_destroy(starEmpty1);
	instance_destroy(starEmpty2);
	instance_destroy(starEmpty3);
	instance_destroy(starFill);
	instance_destroy(continueBtn);
	instance_destroy(pauseText);
	instance_destroy(GameOverMenuCreate);
}

//function DeletePauseMenu() {	
//	instance_destroy(resetBtn);
//	instance_destroy(goHomeBtn);
//	instance_destroy(menuBoard);
//}