// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function CreateJigAndShaker() {
	instance_create_layer(608,544,"Instances",obj_jigger_2oz);
	instance_create_layer(640,416,"Instances",obj_shaker_bot);
	// if physics particle exists draw interact
	instance_create_layer(1056,672,"Instances",obj_interact_shakeit);
}

function DeleteObjsStateAddIngredients() {
	if (instance_exists(BottleHandler.bottle)) {
		instance_destroy(BottleHandler.bottle);
	}
	if (instance_exists(obj_jigger_2oz)) {
		instance_destroy(obj_jigger_2oz);
	} else {
		instance_destroy(obj_jigger_1oz);	
	}
	instance_destroy(obj_shaker_bot);
	instance_destroy(obj_interact_shakeit);
}

function DeleteObjsStateChoice() {
	instance_destroy(ShakeBtn);
	instance_destroy(StirBtn);
}

function DeleteObjsStateShaking() {
	instance_destroy(obj_show_hit);
	instance_destroy(obj_hitpoint);
	instance_destroy(obj_hitpoint_bar);
}

function DeleteObjsStateStirring() {
	instance_destroy(obj_bar_spoon);
	instance_destroy(obj_stir_point);
}

function DeleteObjsStateShowCasing() {
	instance_destroy(obj_shaker_full);
	instance_destroy(MartiniGlass);
}

function ResetRoundMode() {
	physics_particle_delete_region_box(0,0,room_width,room_height);
	instance_create_layer(608,544,"Instances",obj_jigger_2oz);
	instance_create_layer(640,416,"Instances",obj_shaker_bot);
	// if physics particle exists draw interact
	instance_create_layer(1056,672,"Instances",obj_interact_shakeit);
	StageStateHandler.StageState = GAMESTATE.AddingIngredients;
}

function ChooseShakeOrStirOption() {
	instance_create_layer(288, 234,"Instances",ShakeBtn);
	instance_create_layer(758, 234,"Instances",StirBtn);
}

function CreateShakerMode(){
	physics_particle_delete_region_box(0,0,room_width,room_height);
	instance_create_layer(800, 288,"Instances",obj_shaker_full);
	instance_create_layer(22+352, 156+224,"Instances",obj_hitpoint);
	instance_create_layer(352, 224,"Instances",obj_hitpoint_bar);
	//instance_create_layer(room_width-50, y+50, "Instances", obj_percentage);
	DeleteObjsStateAddIngredients();
	StageStateHandler.objectCheckCreate = true;
}

function CreateStirringMode() {
	physics_particle_delete_region_box(0,0,room_width,room_height);
	instance_create_layer(640, 416,"Instances",obj_shaker_bot_filled);
	instance_create_layer(726, 301,"Instances",obj_bar_spoon);
	instance_create_layer(705, 297,"Instances",obj_stir_point);
	DeleteObjsStateAddIngredients();
	StageStateHandler.objectCheckCreate = true;
}

function CreateShowCasingObjects() {
	DeleteObjsStateShaking();
	DeleteObjsStateStirring();
	if (!instance_exists(MartiniGlass)) {
		instance_create_layer(480,352,"Instances",MartiniGlass);
	}
}

function CreateGameOverMenu() {
	instance_create_layer(683,312,"PopUpMenu",obj_btn_home);
	instance_create_layer(683,476,"PopUpMenu",obj_btn_retry);
	instance_create_layer(683,176,"PopUpMenu",obj_timesUp_text);
	instance_create_layer(483,109,"PopUpMenu",obj_gameover_menu);	
}

function DeleteGameOverMenu() {
	instance_destroy(obj_btn_home);
	instance_destroy(obj_btn_retry);
	instance_destroy(obj_timesUp_text);
	instance_destroy(obj_gameover_menu);
}