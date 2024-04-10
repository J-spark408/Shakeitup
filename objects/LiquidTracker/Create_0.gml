currentPour = 0;
prevPour = 0;
occurancePour = 0;
prevValue = 0;
isPoured = false;

liquid_particles_map = ds_map_create();

ds_map_add(liquid_particles_map, LIQUOR.VODKA, 0);
ds_map_add(liquid_particles_map, LIQUOR.TEQUILA, 0);
ds_map_add(liquid_particles_map, LIQUOR.WHISKEY, 0);
ds_map_add(liquid_particles_map, LIQUOR.GIN, 0);
ds_map_add(liquid_particles_map, LIQUOR.VERMOUTH, 0);
ds_map_add(liquid_particles_map, LIQUOR.BITTER, 0);
ds_map_add(liquid_particles_map, LIQUOR.BARSYRUP, 0);
ds_map_add(liquid_particles_map, LIQUOR.ORANGELIQUEUR, 0);
ds_map_add(liquid_particles_map, LIQUOR.LIMEJUICE, 0);

