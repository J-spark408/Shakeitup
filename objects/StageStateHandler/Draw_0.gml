draw_set_font(fnt_menu);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
//draw_text(x,y, "Total:" + string(physics_particle_count()) + " Vodka:" + string(ds_map_find_value(liquid_particles_map,LIQUOR.VODKA)) + " Vermouth:" + string(ds_map_find_value(liquid_particles_map,LIQUOR.VERMOUTH)));

if (room == rm_game && StageState != GAMESTATE.StageOver) {
	draw_text(x,y, "Total:" + string(physics_particle_count()) + " Vodka:" + string(ds_map_find_value(LiquidTracker.liquid_particles_map,LIQUOR.VODKA)) + " Vermouth:" + string(ds_map_find_value(LiquidTracker.liquid_particles_map,LIQUOR.VERMOUTH)));
	physics_particle_draw(flags, LIQUIDCOLOR.CLEAR, spr_clear, 0);
	physics_particle_draw(flags, LIQUIDCOLOR.LIGHTBROWN, spr_light_brown, 0);
	physics_particle_draw(flags, LIQUIDCOLOR.BROWN, spr_brown, 0);
	physics_particle_draw(flags, LIQUIDCOLOR.YELLOW, spr_yellow, 0);
	physics_particle_draw(flags, LIQUIDCOLOR.BITTER, spr_bitter_liquid, 0);
	physics_particle_draw(flags, LIQUIDCOLOR.LIGHTGREEN, spr_light_green, 0);
	draw_text(room_width - 150, y, "Tips $" + string(stageScore));
}
if (StageStateHandler.StageState == GAMESTATE.AddingIngredients && !instance_exists(CustomerList)) {
		draw_text(x+25,room_height-50, string(currentDrink.RecipeName));
}





