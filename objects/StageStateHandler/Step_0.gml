if (room == rm_game) {
	physics_particle_delete_region_box(-200, room_width,room_width+400,room_height/2);
}

// Intro state Dialog lady, customer, and timer is created.
if (StageState == GAMESTATE.Intro && global.currentState == MENUSTATE.GAME) {
	if (!gameStart) {
		points = 0;	
		CreateStageBackground();
		if (!instance_exists(obj_shaker_bot)) {
			CreateJigAndShaker();
		}
		instance_create_layer(0,0,"Instances",obj_DialogLady);
		gameStart = true;
	}
	if (!instance_exists(obj_DialogLady) && !timerStart) {
		instance_create_layer(0,0,"Instances",obj_start_countdown);
		timerStart = true;
	}
	if (instance_exists(obj_start_countdown)) {
		startGameTimer += delta_time/1000000;
	}

	if (startGameTimer >= 3) {
		if (instance_exists(obj_start_countdown)) {
			instance_destroy(obj_start_countdown);
			instance_create_layer(0,0,"Instances",obj_round_countdown);
			StageState = GAMESTATE.AddingIngredients;
		}
	}
}

// Keyboard B press, go too bar selection room. Hold Space to go to Shake State
// At Shaking state, destroy previous instances and create shaking objects
if (StageState == GAMESTATE.AddingIngredients) {
	if (!objectCheckCreate) {
		instance_create_layer(0,0,"Instances",obj_DialogCustomer);
		objectCheckCreate = true;
	}
	GoToBarSelection();
	HoldSpaceToShake();
}


if (StageState == GAMESTATE.ShowCasing && !objectCheckCreate) {
	CreateShowCasingObjects();
	if (obj_shaker_full.y > 288) {
			obj_shaker_full.y--;
	} else if (obj_shaker_full.y < 288) {
		obj_shaker_full.y++;
	} else {
		if (obj_shaker_full.image_angle >= 120) {
			obj_shaker_full.image_angle += 0;
			if (occurancePour != physics_particle_count()) {
				physics_particle_create(flags, 630,280,x-1,x,c_white,1,1);
			} else {
				objectCheckCreate = true;	
			}
		} else {
			obj_shaker_full.image_angle += 1;	
		}
	}
}

if (StageState == GAMESTATE.ShowCasing && objectCheckCreate) {
	if (!checkedAllCondition) {
		waitTimer += delta_time/1000000;
	}
	if (waitTimer >= 3) {
		check_martini();
		checkedAllCondition = true;
		instance_create_layer(0,0,"Instances",obj_DialogCustomer);
		StageState = GAMESTATE.ResetRound;
		objectCheckCreate = false;
	} else if (waitTimer >= 2) {
		physics_particle_delete_region_box(0,0,room_width,room_height);
	}
}

if (StageState == GAMESTATE.ResetRound && !objectCheckCreate) {
	//instance_destroy(obj_shaker_full);
	//instance_destroy(MartiniGlass);
	DeleteObjsStateShowCasing();
	if (!instance_exists(obj_DialogCustomer)) {
		ResetVariables();
		ResetPreviousPour();
		ResetRoundMode();
	}
}

if (StageState == GAMESTATE.StageOver && global.currentState == MENUSTATE.GAME) {
	RoundOver();
	ResetVariables();
	CreateGameOverMenu();
}





//if (!new_round) {
//	reset_round();
//	instance_create_layer(0,0,"Instances",obj_DialogLady);
//	new_round = true;
//	round_restart = true;
//	round_timer_over = false;
//}


// && !instance_exists(obj_start_countdown) && !instance_exists(obj_DialogLady) && !instance_exists(obj_DialogCustomer)

//if (keyboard_check_pressed(ord("B")) && !instance_exists(obj_DialogLady) 
//	&& !instance_exists(obj_DialogCustomer) && !instance_exists(obj_start_countdown)) {
		
//	StageState = GAMESTATE.ChoosingIngredients;	
//    GetLiquidCounts()
//    room_goto(rm_bar_selection);
//}

//if (keyboard_check(vk_space) && physics_particle_count() != 0) {
//	timer += delta_time/1000000;
//} else {
//	timer = 0;
//}

//if (!instance_exists(obj_DialogLady) && round_restart) {
//	//start_game_timer += delta_time/1000000;
//	if (!game_start) {
//		instance_create_layer(0,0,"Instances",obj_start_countdown);
//		instance_create_layer(0,0,"Instances",obj_round_countdown);
//		game_start = true;
//		round_restart = false;
//	}
//}

//if (instance_exists(obj_start_countdown)) {
//	start_game_timer += delta_time/1000000;
//	//show_debug_message(start_game_timer)
//}

//if (start_game_timer >= 3 && !has_customer_order) {
//	if (instance_exists(obj_start_countdown)) {
//		instance_destroy(obj_start_countdown);
//	}
//	has_customer_order = true;
//}

//if (has_customer_order && shake_done) {
//	show_debug_message("is it made");
//	//instance_destroy(obj_shaker_full);
//	instance_destroy(obj_show_hit);
//	instance_destroy(obj_hitpoint);
//	instance_destroy(obj_hitpoint_bar);
//	//instance_create_layer(800, 288,"Instances",obj_shaker_full);
//	//instance_create_layer(480, 370, "Instances",MartiniGlass);
//	//if (obj_shaker_full.vertical_speed >= 0 || obj_shaker_full.rotate_speed >= 0) {
//	//	obj_shaker_full.vertical_speed--;
//	//	obj_shaker_full.rotate_speed--;
//	//}
//	if (!shaker_position_placed) {
//		if (obj_shaker_full.y > 288) {
//			obj_shaker_full.y--;
//		} else if (obj_shaker_full.y < 288) {
//			obj_shaker_full.y++;
//		} else {
//			shaker_position_placed = true;
//			instance_create_layer(480,352,"Instances",MartiniGlass);
//		}
//	}
//	if (shaker_position_placed && !check_drink_condition) {
//		if (obj_shaker_full.image_angle >= 120) {
//			obj_shaker_full.image_angle += 0;
//			if (pour_count != physics_particle_count()) {
//				physics_particle_create(flags, 630,280,x-1,x,c_white,1,1);
//			} else {
//				check_drink_condition = true;
//			}
//		} else {
//			obj_shaker_full.image_angle += 1;	
//		}
//	}
//}
//if (check_drink_condition && !checkedAllCondition) {
//	check_martini();	
//	checkedAllCondition = true;
//}

//if (check_drink_condition && !drink_given) {
//	waitTimer += delta_time/1000000;
//	if (waitTimer >= 3) {
//		instance_create_layer(0,0,"Instances",obj_DialogCustomer);
//		drink_given = true;
//	} else if (waitTimer >= 2) {
//		physics_particle_delete_region_box(0,0,room_width,room_height);
//	}
//}

//if (!round_timer_over && drink_given) {
//	instance_destroy(MartiniGlass);
//	instance_destroy(obj_shaker_full);
//	ResetPreviousPour();
//	reset_round();
//}


//if (round_timer_over && game_start && room == rm_game) {
//	instance_create_layer(683,312,"PopUpMenu",obj_btn_home);
//	instance_create_layer(683,476,"PopUpMenu",obj_btn_retry);
//	instance_create_layer(683,176,"PopUpMenu",obj_timesUp_text);
//	instance_create_layer(483,109,"PopUpMenu",obj_gameover_menu);
//	instance_destroy(obj_round_countdown);
//} else if (instance_exists(obj_btn_retry) && instance_exists(obj_btn_home)
//		 && instance_exists(obj_timesUp_text) && instance_exists(obj_gameover_menu)) {
//		instance_destroy(obj_btn_retry);
//		instance_destroy(obj_btn_home);
//		instance_destroy(obj_timesUp_text);
//		instance_destroy(obj_gameover_menu);
//}
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
