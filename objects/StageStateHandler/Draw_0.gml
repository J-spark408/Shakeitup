draw_set_font(fnt_menu);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
//draw_text(x,y, "Total:" + string(physics_particle_count()) + " Vodka:" + string(ds_map_find_value(liquid_particles_map,LIQUOR.VODKA)) + " Vermouth:" + string(ds_map_find_value(liquid_particles_map,LIQUOR.VERMOUTH)));

if (room == rm_game) {
	draw_text(x,y, "Total:" + string(physics_particle_count()) + " Vodka:" + string(ds_map_find_value(LiquidTracker.liquid_particles_map,LIQUOR.VODKA)) + " Vermouth:" + string(ds_map_find_value(LiquidTracker.liquid_particles_map,LIQUOR.VERMOUTH)));
	physics_particle_draw(flags, 1, spr_clear, 0);
	physics_particle_draw(flags, 2, spr_light_brown, 0);
	physics_particle_draw(flags, 3, spr_brown, 0);
	physics_particle_draw(flags, 4, spr_bitter, 0);
	draw_text(room_width - 150, y, "Tips $" + string(points));
}



