flags = phy_particle_flag_colormixing
//flags = phy_particle_flag_water | phy_particle_flag_spring; // | phy_particle_flag_viscous | phy_particle_flag_colourmixing;

//physics_particle_set_radius(4);
//physics_particle_set_density(0.5);
//physics_particle_set_gravity_scale(10);

is_grabbed = false;


if (game_data.StageState == GAMESTATE.ChoosingIngredients) {
	image_alpha = 0.4;
}

bottle_selected = noone;
bottle = noone;

liquors = [LIQUOR.VODKA, LIQUOR.TEQUILA, LIQUOR.WHISKEY,
            LIQUOR.GIN, LIQUOR.VERMOUTH]


function setCurrentBottle() {
	for (var i = 0; i < array_length(liquors); i++) {
		if (global.currentBottle == liquors[i] && !global.bottleChoosen) {
			instance_destroy(bottle);
		    bottle = instance_create_layer(x,y,"Instances",game_data._get_obj);
		    bottle_selected = liquors[i];
		    global.bottleChoosen = true;
		}
	}
}
