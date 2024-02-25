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
