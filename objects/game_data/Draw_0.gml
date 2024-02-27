draw_text(x,y, "Total:" + string(physics_particle_count()) + " Vodka:" + string(ds_map_find_value(liquid_particles_map,LIQUOR.VODKA)) + " Vermouth:" + string(ds_map_find_value(liquid_particles_map,LIQUOR.VERMOUTH)));

physics_particle_draw(flags, 1, spr_clear, 0);
physics_particle_draw(flags, 2, spr_dark_brown, 0);
physics_particle_draw(flags, 3, spr_brown, 0);

if (keyboard_check_pressed(vk_space)) {
	if (ds_map_find_value(liquid_particles_map, LIQUOR.VODKA) >= 580 && 
		ds_map_find_value(liquid_particles_map, LIQUOR.VODKA) <= 610 ) {
		condition++
	} else {
		condition += 0;	
	}
	if (ds_map_find_value(liquid_particles_map, LIQUOR.VERMOUTH) >= 40 && 
		ds_map_find_value(liquid_particles_map, LIQUOR.VERMOUTH) <= 60 ) {
		condition++
	} else {
		condition += 0;	
	}

	//show_debug_message(condition);
}

//if (condition == 2 && is_martini) {
//		draw_text(x,y+200, "Its a martini");
//	} else {
//		draw_text(x,y+200, "TOO STRONG");		
//	}