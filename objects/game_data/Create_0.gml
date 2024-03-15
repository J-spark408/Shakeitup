StageState = STATES.Intro;
//_number_bottles = 3;
flags = phy_particle_flag_water | phy_particle_flag_spring | phy_particle_flag_colormixing;

current_pour = 0;
prev_pour = 0;
prev_occurance_pour = 0;
prev_value = 0;
is_poured = false;

liquid_particles_map = ds_map_create();

ds_map_add(liquid_particles_map, LIQUOR.VODKA, 0);
ds_map_add(liquid_particles_map, LIQUOR.TEQUILA, 0);
ds_map_add(liquid_particles_map, LIQUOR.WHISKEY, 0);
ds_map_add(liquid_particles_map, LIQUOR.GIN, 0);
ds_map_add(liquid_particles_map, LIQUOR.VERMOUTH, 0);

//condition = 0;
//is_martini = true;

_picked = noone;
_get_obj = noone;
_particles = 0;
_index = 0;

timer = 0;
start_game_timer = 0;
action_wait_timer = 0;
game_start = false;
has_customer_order = false;
check_drink_condition = false;

points = 0;

//create jigger/shaker/interact buttons
new_round = false;
instance_create_layer(608,544,"Instances",obj_jigger_2oz);
instance_create_layer(640,416,"Instances",obj_shaker_bot);
// if physics particle exists draw interact
instance_create_layer(1056,672,"Instances",obj_interact_shakeit);
//instance_create_layer(640,416,"Instances",obj_shaker_bot_filled);
instance_create_layer(0,0,"Instances",obj_DialogLady);

//layer_sprite_create("Assets",0,621,spr_bartop);
//layer_sprite_create("Assets",950,47,spr_neonlight);
//layer_sprite_create("Assets",x,y,spr_barbackground);


shake_start = false;
shake_done = false;

progress_text = "";

physics_particle_set_radius(4);
physics_particle_set_density(0.5);
physics_particle_set_gravity_scale(10);

pour_count = 0;
shaker_position_placed = false;


switch(global.current_stage) {
	case 0:
	layer_sprite_create("Assets",0,621,spr_bartop);
	layer_sprite_create("Assets",950,47,spr_neonlight);
	layer_sprite_create("Assets",x,y,spr_barbackground);
	break;
	case 1:
	layer_sprite_create("Assets",0,621,spr_bartop);
	layer_sprite_create("Assets",x,y,spr_asian);
	break;
	case 2:
	layer_sprite_create("Assets",0,621,spr_bartop);
	case 3:
	layer_sprite_create("Assets",0,621,spr_bartop);
	case 4:
	layer_sprite_create("Assets",0,621,spr_bartop);
	default:
	break;
}

first_condition = false;
second_condition = false;
checked_all_condition = false;

function check_martini() {
	if (ds_map_find_value(liquid_particles_map, LIQUOR.VODKA) >= 580 && 
		ds_map_find_value(liquid_particles_map, LIQUOR.VODKA) <= 610 ) {
		first_condition = true;
	} 
	if (ds_map_find_value(liquid_particles_map, LIQUOR.VERMOUTH) >= 40 && 
		ds_map_find_value(liquid_particles_map, LIQUOR.VERMOUTH) <= 60 ) {
		second_condition = true;
	} 
}
drink_given = false;
round_timer_over = false;
round_restart = false;

reset_pressed = false;
function reset_round() {
	current_pour = 0;
	prev_pour = 0;
	prev_occurance_pour = 0;
	prev_value = 0;
	is_poured = false;
	timer = 0;
	start_game_timer = 0;
	action_wait_timer = 0;
	shake_start = false;
	shake_done = false;
	round_restart = false;
	shaker_position_placed = false;
	first_condition = false;
	second_condition = false;
	checked_all_condition = false;
	has_customer_order = false;
	check_drink_condition = false;
	drink_given = false;
	round_restart = false;
	if (!instance_exists(obj_jigger_2oz) && !instance_exists(obj_shaker_bot) && !instance_exists(obj_interact_shakeit)) {
		instance_create_layer(608,544,"Instances",obj_jigger_2oz);
		instance_create_layer(640,416,"Instances",obj_shaker_bot);
		instance_create_layer(1056,672,"Instances",obj_interact_shakeit);
	}
}


//if (global.current_stage == 0) {
//	layer_sprite_create("Assets",0,621,spr_bartop);
//	layer_sprite_create("Assets",950,47,spr_neonlight);
//	layer_sprite_create("Assets",x,y,spr_barbackground);
//} else if (global.current_stage == 1) {
//	layer_sprite_create("Assets",0,621,spr_bartop);
//	layer_sprite_create("Assets",x,y,spr_asian);
//} else if (obj_stage_info.stage.stage_level == stage_data.stage_size) {
//		show_debug_message("its locked")
//}