physics_particle_delete_region_box(-200, room_width,room_width+400,room_height/2);

if (keyboard_check_pressed(ord("B"))) {
    if (physics_particle_count() > 0 && obj_current_bottle.bottle_selected != noone && is_poured) {
        if (prev_pour == 0) {
            prev_pour = physics_particle_count();
            ds_map_set(liquid_particles_map, obj_current_bottle.bottle_selected, prev_pour)
			prev_occurance_pour += prev_pour;
            is_poured = false;
        } else {
            current_pour = physics_particle_count() - prev_occurance_pour;
            prev_value = ds_map_find_value(liquid_particles_map,obj_current_bottle.bottle_selected);
            prev_pour = current_pour;
			prev_occurance_pour += prev_pour;	
            ds_map_set(liquid_particles_map, obj_current_bottle.bottle_selected, abs(prev_pour) + prev_value);
            is_poured = false;
        }
    }
    show_debug_message(prev_value);
    show_debug_message(prev_pour);
	show_debug_message(prev_occurance_pour);

    room_goto(rm_room_bar_selection);
}

if (keyboard_check(vk_space) && !shake_start && physics_particle_count() != 0) {
	timer += delta_time/1000000;
} else {
	timer = 0;
}
if (timer >= 1 && !shake_start) {
	
	show_debug_message(timer);
	if (prev_pour > 0) {
		current_pour = physics_particle_count() - prev_occurance_pour;
	    prev_value = ds_map_find_value(liquid_particles_map,obj_current_bottle.bottle_selected);
	    prev_pour = current_pour;
		prev_occurance_pour += prev_pour;	
	    ds_map_set(liquid_particles_map, obj_current_bottle.bottle_selected, abs(prev_pour) + prev_value);
	    is_poured = false;
	}
	
	physics_particle_delete_region_box(0,0,room_width,room_height);
	instance_create_layer(800, 288,"Instances",obj_shaker_full);
	//instance_create_layer(480, 370, "Instances",MartiniGlass);
	instance_create_layer(22+352, 156+224,"Instances",obj_hitpoint);
	instance_create_layer(352, 224,"Instances",obj_hitpoint_bar);
	instance_create_layer(room_width-50, y+50, "Instances", obj_percentage);
	instance_destroy(obj_current_bottle.bottle);
	if (instance_exists(obj_jigger_2oz)) {
		instance_destroy(obj_jigger_2oz);
	} else {
		instance_destroy(obj_jigger_1oz);	
	}
	instance_destroy(obj_shaker_bot);
	shake_start = true;
	shake_done = true;
}

if (!instance_exists(obj_DialogLady)) {
	start_game_timer += delta_time/1000000;
}
if (start_game_timer >= 3 && !has_customer_order) {
	// Todo create customer instances
	instance_create_layer(0,0,"Instances",obj_DialogCustomer);
	has_customer_order = true;
}


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

