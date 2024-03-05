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

condition = 0;
is_martini = true;

_picked = noone;
_get_obj = noone;
_particles = 0;
_index = 0;

timer = 0;

instance_create_layer(608,544,"Instances",obj_jigger_2oz);
instance_create_layer(640,416,"Instances",obj_shaker_bot);
instance_create_layer(1056,672,"Instances",obj_interact_shakeit);

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