// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function CreateJigAndShaker() {
	instance_create_layer(608,544,"Instances",obj_jigger_2oz);
	instance_create_layer(640,416,"Instances",obj_shaker_bot);
	// if physics particle exists draw interact
	instance_create_layer(1056,672,"Instances",obj_interact_shakeit);
}

function ResetRoundMode() {
	physics_particle_delete_region_box(0,0,room_width,room_height);
	instance_create_layer(608,544,"Instances",obj_jigger_2oz);
	instance_create_layer(640,416,"Instances",obj_shaker_bot);
	// if physics particle exists draw interact
	instance_create_layer(1056,672,"Instances",obj_interact_shakeit);
	game_data.StageState = GAMESTATE.AddingIngredients;
}

function CreateShakerMode(){
	physics_particle_delete_region_box(0,0,room_width,room_height);
	instance_create_layer(800, 288,"Instances",obj_shaker_full);
	instance_create_layer(22+352, 156+224,"Instances",obj_hitpoint);
	instance_create_layer(352, 224,"Instances",obj_hitpoint_bar);
	instance_create_layer(room_width-50, y+50, "Instances", obj_percentage);
	instance_destroy(BottleHandler.bottle);
	if (instance_exists(obj_jigger_2oz)) {
		instance_destroy(obj_jigger_2oz);
	} else {
		instance_destroy(obj_jigger_1oz);	
	}
	instance_destroy(obj_shaker_bot);
	instance_destroy(obj_interact_shakeit);
	game_data.objectCheckCreate = true;
}

function CreateStirringMode() {
	
}

function CreateShowCasingObjects() {
	instance_destroy(obj_show_hit);
	instance_destroy(obj_hitpoint);
	instance_destroy(obj_hitpoint_bar);
	if (!instance_exists(MartiniGlass)) {
		instance_create_layer(480,352,"Instances",MartiniGlass);
	}
}