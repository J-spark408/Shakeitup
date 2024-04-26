draw_set_font(fnt_menu);
draw_set_color(c_white);
draw_set_halign(fa_left);
draw_set_valign(fa_top);
//draw_text(x,y, "Total:" + string(physics_particle_count()) + " Vodka:" + string(ds_map_find_value(liquid_particles_map,LIQUOR.VODKA)) + " Vermouth:" + string(ds_map_find_value(liquid_particles_map,LIQUOR.VERMOUTH)));

if (room == rm_game && StageState != GAMESTATE.StageOver) {
	draw_text(x,room_height - 100, "Total:" + string(physics_particle_count()));
	physics_particle_draw(flags, LIQUIDCOLOR.CLEAR, spr_clear, 0);
	physics_particle_draw(flags, LIQUIDCOLOR.LIGHTBROWN, spr_light_brown, 0);
	physics_particle_draw(flags, LIQUIDCOLOR.BROWN, spr_brown, 0);
	physics_particle_draw(flags, LIQUIDCOLOR.YELLOW, spr_yellow, 0);
	physics_particle_draw(flags, LIQUIDCOLOR.BITTER, spr_bitter_liquid, 0);
	physics_particle_draw(flags, LIQUIDCOLOR.LIGHTGREEN, spr_light_green, 0);
}

if (room = rm_bar_selection) {
	if (!instance_exists(ShowBottleNames)) {
		instance_create_layer(x,y,"PopUpMenu",ShowBottleNames);	
	}
}

if (StageState != GAMESTATE.Intro && StageState != GAMESTATE.ChoosingIngredients 
&& StageState != GAMESTATE.Pause && StageState != GAMESTATE.StageOver && !instance_exists(CustomerList)) {
	if (instance_exists(StageTabDescriptionBox)) {
		draw_set_halign(fa_right);
		draw_set_valign(fa_top);
		draw_text(StageTabDescriptionBox.x,StageTabDescriptionBox.y + 75/2, "Tips $" + string(stageScore));
	}
		draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_color(c_maroon);
	draw_text(StageTabDescriptionBox.x,StageTabDescriptionBox.y, string(drinkToMake));
}





