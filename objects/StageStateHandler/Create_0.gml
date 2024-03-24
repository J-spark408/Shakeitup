StageState = GAMESTATE.Intro;
flags = phy_particle_flag_water | phy_particle_flag_spring | phy_particle_flag_colormixing;
deleteParticles = physics_particle_delete_region_box(0,0,room_width,room_height);

physics_particle_set_radius(4);
physics_particle_set_density(0.5);
physics_particle_set_gravity_scale(10);
objectCheckCreate = false;
_picked = noone;
_get_obj = noone;
_particles = 0;
_index = 0;
points = 0;

gameStart = false;
timerStart = false;
startGameTimer = 0;
waitTimer = 0;
timer = 0;

firstCondition = false;
secondCondition = false;
checkedAllCondition = false;

request = "";
random_customer = noone;
//currentPour = 0;
//prevPour = 0;
//occurancePour = 0;
//prevValue = 0;
//isPoured = false;

mixChoice = noone;

//liquid_particles_map = ds_map_create();

//ds_map_add(liquid_particles_map, LIQUOR.VODKA, 0);
//ds_map_add(liquid_particles_map, LIQUOR.TEQUILA, 0);
//ds_map_add(liquid_particles_map, LIQUOR.WHISKEY, 0);
//ds_map_add(liquid_particles_map, LIQUOR.GIN, 0);
//ds_map_add(liquid_particles_map, LIQUOR.VERMOUTH, 0);


backgroundSprite = noone;
barTop = noone;
misc = noone;

//switch(global.current_stage) {
//	case 0:
//	layer_sprite_create("Assets",0,621,spr_bartop);
//	layer_sprite_create("Assets",950,47,spr_neonlight);
//	layer_sprite_create("Assets",x,y,spr_barbackground);
//	break;
//	case 1:
//	layer_sprite_create("Assets",0,621,spr_bartop);
//	layer_sprite_create("Assets",x,y,spr_asian);
//	break;
//	case 2:
//	layer_sprite_create("Assets",0,621,spr_bartop);
//	case 3:
//	layer_sprite_create("Assets",0,621,spr_bartop);
//	case 4:
//	layer_sprite_create("Assets",0,621,spr_bartop);
//	default:
//	break;
//}


function check_martini() {
	if (ds_map_find_value(LiquidTracker.liquid_particles_map, LIQUOR.VODKA) >= 600 && 
		ds_map_find_value(LiquidTracker.liquid_particles_map, LIQUOR.VODKA) <= 670 ) {
		firstCondition = true;
	} 
	if (ds_map_find_value(LiquidTracker.liquid_particles_map, LIQUOR.VERMOUTH) >= 35 && 
		ds_map_find_value(LiquidTracker.liquid_particles_map, LIQUOR.VERMOUTH) <= 70 ) {
		secondCondition = true;
	} 
}

//function ResetVariables() {
//	objectCheckCreate = false;
//	global.currentBottle = noone;
//	_get_obj = noone;

//	waitTimer = 0;
//	timer = 0;

//	firstCondition = false;
//	secondCondition = false;
//	checkedAllCondition = false;

//	currentPour = 0;
//	prevPour = 0;
//	occurancePour = 0;
//	prevValue = 0;
//	isPoured = false;
//}

//function RoundOver() {
//	DeleteObjsStateAddIngredients();
//	DeleteObjsStateShaking();
//	DeleteObjsStateShowCasing();
//	instance_destroy(obj_DialogCustomer);
//	points = 0;	
//	gameStart = false;
//	timerStart = false;
//	startGameTimer = 0;
//}




//timer = 0;

////has_customer_order = false;
////check_drink_condition = false;

//points = 0;

////create jigger/shaker/interact buttons
//new_round = false;
////instance_create_layer(608,544,"Instances",obj_jigger_2oz);
////instance_create_layer(640,416,"Instances",obj_shaker_bot);
////// if physics particle exists draw interact
////instance_create_layer(1056,672,"Instances",obj_interact_shakeit);
//////instance_create_layer(640,416,"Instances",obj_shaker_bot_filled);
////instance_create_layer(0,0,"Instances",obj_DialogLady);

////layer_sprite_create("Assets",0,621,spr_bartop);
////layer_sprite_create("Assets",950,47,spr_neonlight);
////layer_sprite_create("Assets",x,y,spr_barbackground);

//shake_start = false;
//shake_done = false;

//progress_text = "";


//shaker_position_placed = false;

//drink_given = false;
//round_timer_over = false;
//round_restart = false;

//reset_pressed = false;