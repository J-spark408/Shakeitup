//_number_bottles = 3;
flags = phy_particle_flag_water | phy_particle_flag_spring | phy_particle_flag_colormixing;

current_pour = 0;
prev_pour = 0;
prev_occurance_pour = 0;
prev_value = 0;
is_poured = false;

liquid_particles_map = ds_map_create();

ds_map_add(liquid_particles_map, LIQUOR.VODKA, 0);
ds_map_add(liquid_particles_map, LIQUOR.JAG, 0);
ds_map_add(liquid_particles_map, LIQUOR.WHISKEY, 0);
ds_map_add(liquid_particles_map, LIQUOR.GIN, 0);
ds_map_add(liquid_particles_map, LIQUOR.VERMOUTH, 0);

condition = 0;
is_martini = true;