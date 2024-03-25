flags = phy_particle_flag_colormixing
//flags = phy_particle_flag_water | phy_particle_flag_spring; // | phy_particle_flag_viscous | phy_particle_flag_colourmixing;

//physics_particle_set_radius(4);
//physics_particle_set_density(0.5);
//physics_particle_set_gravity_scale(10);

is_grabbed = false;
show_text = false;

if (StageStateHandler.StageState == GAMESTATE.ChoosingIngredients) {
	image_alpha = 0.4;
}

bottle_selected = noone;
bottle = noone;

//liquors = [LIQUOR.VODKA, LIQUOR.TEQUILA, LIQUOR.WHISKEY,
//            LIQUOR.GIN, LIQUOR.VERMOUTH, LIQUOR.BITTER]


//function setCurrentBottle() {
//	for (var i = 0; i < array_length(liquors); i++) {
//		if (global.currentBottle == liquors[i] && !global.bottleChoosen) {
//			show_debug_message(global.currentBottle);
//			instance_destroy(bottle);
//		    bottle = instance_create_layer(x,y,"Instances",StageStateHandler._get_obj);
//			show_debug_message(object_get_name(StageStateHandler._get_obj));
//		    bottle_selected = liquors[i];
//		    global.bottleChoosen = true;
//		}
//	}
//}


liquidList = ds_map_create();
ds_map_add(liquidList, LIQUOR.VODKA, Vodka);
ds_map_add(liquidList, LIQUOR.TEQUILA, Tequila);
ds_map_add(liquidList, LIQUOR.WHISKEY, Whiskey);
ds_map_add(liquidList, LIQUOR.GIN, Gin);
ds_map_add(liquidList, LIQUOR.VERMOUTH, Vermouth);
ds_map_add(liquidList, LIQUOR.BITTER, Bitter);


//function setCurrentBottle() {
//    for (var liquid_index = 0; liquid_index < ds_map_size(liquidList); liquid_index++) {
//        selectedBottle = ds_map_find_value(liquidList, liquid_index);
//        if (global.currentBottle == liquid_index && !global.bottleChoosen) {
//            instance_destroy(bottle);
//            show_debug_message(global.currentBottle);
//            show_debug_message(liquid_index);
//            bottle = instance_create_layer(BottleHandler.x,BottleHandler.y,"Instances",StageStateHandler._get_obj);
//            bottle_selected = liquid_index;
//            global.bottleChoosen = true;
//        }
//    }
//}