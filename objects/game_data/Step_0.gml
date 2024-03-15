if (room == rm_game) {
	physics_particle_delete_region_box(-200, room_width,room_width+400,room_height/2);
}

if (StageState = STATES.Intro) {
	
}

if (!new_round) {
	reset_round();
	instance_create_layer(0,0,"Instances",obj_DialogLady);
	new_round = true;
	round_restart = true;
	round_timer_over = false;
}


// && !instance_exists(obj_start_countdown) && !instance_exists(obj_DialogLady) && !instance_exists(obj_DialogCustomer)

if (keyboard_check_pressed(ord("B")) && !round_timer_over && !instance_exists(obj_DialogLady) 
	&& !instance_exists(obj_DialogCustomer) && !instance_exists(obj_start_countdown)) {
		
	StageState = STATES.ChoosingIngredients;	
    GetLiquidCounts()
    room_goto(rm_bar_selection);
}

if (keyboard_check(vk_space) && !shake_start && physics_particle_count() != 0) {
	timer += delta_time/1000000;
} else {
	timer = 0;
}
if (timer >= 1 && !shake_start) {
	GetLiquidCounts();
	
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
	StageState = STATES.Shaking;
}

if (!instance_exists(obj_DialogLady) && round_restart) {
	//start_game_timer += delta_time/1000000;
	if (!game_start) {
		instance_create_layer(0,0,"Instances",obj_start_countdown);
		instance_create_layer(0,0,"Instances",obj_round_countdown);
		game_start = true;
		round_restart = false;
	}
}

if (instance_exists(obj_start_countdown)) {
	start_game_timer += delta_time/1000000;
	//show_debug_message(start_game_timer)
}

if (start_game_timer >= 3 && !has_customer_order) {
	if (instance_exists(obj_start_countdown)) {
		instance_destroy(obj_start_countdown);
	}
	has_customer_order = true;
}

if (has_customer_order && shake_done) {
	//instance_destroy(obj_shaker_full);
	instance_destroy(obj_show_hit);
	instance_destroy(obj_hitpoint);
	instance_destroy(obj_hitpoint_bar);
	//instance_create_layer(800, 288,"Instances",obj_shaker_full);
	//instance_create_layer(480, 370, "Instances",MartiniGlass);
	//if (obj_shaker_full.vertical_speed >= 0 || obj_shaker_full.rotate_speed >= 0) {
	//	obj_shaker_full.vertical_speed--;
	//	obj_shaker_full.rotate_speed--;
	//}
	if (!shaker_position_placed) {
		if (obj_shaker_full.y > 288) {
			obj_shaker_full.y--;
		} else if (obj_shaker_full.y < 288) {
			obj_shaker_full.y++;
		} else {
			shaker_position_placed = true;
			instance_create_layer(480,352,"Instances",MartiniGlass);
		}
	}
	if (shaker_position_placed && !check_drink_condition) {
		if (obj_shaker_full.image_angle >= 120) {
			obj_shaker_full.image_angle += 0;
			if (pour_count != physics_particle_count()) {
				physics_particle_create(flags, 630,280,x-1,x,c_white,1,1);
			} else {
				check_drink_condition = true;
			}
		} else {
			obj_shaker_full.image_angle += 1;	
		}
	}
}
if (check_drink_condition && !checked_all_condition) {
	check_martini();	
	checked_all_condition = true;
}

if (check_drink_condition && !drink_given) {
	action_wait_timer += delta_time/1000000;
	if (action_wait_timer >= 3) {
		instance_create_layer(0,0,"Instances",obj_DialogCustomer);
		drink_given = true;
	} else if (action_wait_timer >= 2) {
		physics_particle_delete_region_box(0,0,room_width,room_height);
	}
}

if (!round_timer_over && drink_given) {
	instance_destroy(MartiniGlass);
	instance_destroy(obj_shaker_full);
	ResetPreviousPour();
	reset_round();
}


if (round_timer_over && game_start && room == rm_game) {
	instance_create_layer(683,312,"PopUpMenu",obj_btn_home);
	instance_create_layer(683,476,"PopUpMenu",obj_btn_retry);
	instance_create_layer(683,176,"PopUpMenu",obj_timesUp_text);
	instance_create_layer(483,109,"PopUpMenu",obj_gameover_menu);
	instance_destroy(obj_round_countdown);
} else if (instance_exists(obj_btn_retry) && instance_exists(obj_btn_home)
		 && instance_exists(obj_timesUp_text) && instance_exists(obj_gameover_menu)) {
		instance_destroy(obj_btn_retry);
		instance_destroy(obj_btn_home);
		instance_destroy(obj_timesUp_text);
		instance_destroy(obj_gameover_menu);
}
// show results of how many points were earned and if stage is passed
//
//
//
//


// Create gameover menu 



//if (shake_done && keyboard_check(vk_space)) {
//	if (obj_shaker_full.image_angle <= 100) {
//		obj_shaker_full.image_angle += 2;
//	} else {
//		obj_shaker_full.image_angle += 0;
//		if (pour_count != physics_particle_count()) {
//			physics_particle_create(flags, 640,250,x,y,c_white,1,1)
//		}
//	}
//}



//if (ds_map_find_value(liquid_particles_map, LIQUOR.VODKA) >= 580 || 
//		ds_map_find_value(liquid_particles_map, LIQUOR.VODKA) <= 610 ) {
//		condition++
//	} else {
//		condition += 0;	
//	}
//	if (ds_map_find_value(liquid_particles_map, LIQUOR.VERMOUTH) >= 40 || 
//		ds_map_find_value(liquid_particles_map, LIQUOR.VERMOUTH) <= 60 ) {
//		condition++
//	} else {
//		condition += 0;	
//	}

