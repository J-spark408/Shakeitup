// Updates the particle count into map everytime pour has been made into the shaker
function GetLiquidCounts(){
	if (physics_particle_count() > 0 && BottleHandler.bottle_selected != noone && isPoured) {
        if (prevPour == 0) {
            prevPour = physics_particle_count();
            ds_map_set(liquid_particles_map, BottleHandler.bottle_selected, prevPour)
			occurancePour += prevPour;
			//pour_count = physics_particle_count();
            isPoured = false;
        } else {
            currentPour = physics_particle_count() - occurancePour;
            prevValue = ds_map_find_value(liquid_particles_map,BottleHandler.bottle_selected);
            prevPour = currentPour;
			occurancePour += prevPour;	
            ds_map_set(liquid_particles_map, BottleHandler.bottle_selected, abs(prevPour) + prevValue);
			//pour_count = physics_particle_count();
            isPoured = false;
        }
    }
}

// For loop through the map and reset all values for new round/game.
function ResetPreviousPour() {
	for (numOfBottles = 0; numOfBottles < ds_map_size(liquid_particles_map); numOfBottles++) {
		ds_map_set(liquid_particles_map, numOfBottles, 0);
	}
}