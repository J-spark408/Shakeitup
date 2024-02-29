physics_particle_delete_region_box(-200, room_width,room_width+400,room_height/2);

if (keyboard_check_pressed(ord("B"))) {
    if (physics_particle_count() > 0 && obj_current_bottle.bottle_selected != noone && is_poured) {
        if (prev_pour == 0) {
            prev_pour = physics_particle_count();
            ds_map_set(liquid_particles_map, obj_current_bottle.bottle_selected, prev_pour)
			prev_occurance_pour += prev_pour;
            is_poured = false;
        } else {
			show_debug_message("I'm here");
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

if (keyboard_check(vk_space) && !shake_start) {
	timer += delta_time/1000000;
} else {
	timer = 0;
}
if (timer >= 3 && !shake_start) {
	
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
	instance_create_layer(750, 288,"Instances",obj_shaker_full);
	instance_create_layer(11+352, 156+224,"Instances",obj_hitpoint);
	instance_create_layer(352, 224,"Instances",obj_hitpoint_bar);
	instance_destroy(obj_current_bottle.bottle);
	if (instance_exists(obj_jigger_2oz)) {
		instance_destroy(obj_jigger_2oz);
	} else {
		instance_destroy(obj_jigger_1oz);	
	}
	instance_destroy(obj_shaker_bot);
	shake_start = true;
}

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

