flags = phy_particle_flag_colormixing
//flags = phy_particle_flag_water | phy_particle_flag_spring; // | phy_particle_flag_viscous | phy_particle_flag_colourmixing;

//physics_particle_set_radius(4);
//physics_particle_set_density(0.5);
//physics_particle_set_gravity_scale(10);

is_grabbed = false;

bottleChoosen = false;

if (game_data.StageState == STATES.ChoosingIngredients) {
	image_alpha = 0.4;
}

bottle_selected = noone;
bottle = noone;

liquors = [LIQUOR.VODKA, LIQUOR.TEQUILA, LIQUOR.WHISKEY,
            LIQUOR.GIN, LIQUOR.VERMOUTH]

function createNewBottle() {
	if (game_data.StageState == STATES.AddingIngredients) {
		for (var i = 0; i < array_length(liquors); i++) {
		    if (global.currentBottle == liquors[i] && !bottleChoosen) {
				instance_destroy(bottle);
		        bottle = instance_create_layer(x,y,"Instances",game_data._get_obj);
		        bottle_selected = liquors[i];
		        bottleChoosen = true;
		    }
		}
	}	
}

//function setglobal.currentBottle(newBottle) {
//	global.currentBottle = newBottle;
//	show_debug_message("new bottle selected:")
//	show_debug_message(global.currentBottle);
//}
