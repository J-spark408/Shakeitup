flags = phy_particle_flag_colormixing
initial_position_x = 330;
initial_position_y = 680;
is_grabbed = false;

if (StageStateHandler.StageState == GAMESTATE.ChoosingIngredients) {
	image_alpha = 0.4;
}
checkedBottle = false;
bottle_selected = noone;
bottleObj = noone;
particleIndex = 0;


liquidList = ds_map_create();
ds_map_add(liquidList, LIQUOR.VODKA, Vodka);
ds_map_add(liquidList, LIQUOR.TEQUILA, Tequila);
ds_map_add(liquidList, LIQUOR.WHISKEY, Whiskey);
ds_map_add(liquidList, LIQUOR.GIN, Gin);
ds_map_add(liquidList, LIQUOR.VERMOUTH, Vermouth);
ds_map_add(liquidList, LIQUOR.BITTER, Bitter);
ds_map_add(liquidList, LIQUOR.BARSYRUP, Barsyrup);
ds_map_add(liquidList, LIQUOR.END, zEnd);
