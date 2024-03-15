// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function GetLiquidCounts(){
	if (physics_particle_count() > 0 && BottleHandler.bottle_selected != noone && is_poured) {
        if (prev_pour == 0) {
            prev_pour = physics_particle_count();
            ds_map_set(liquid_particles_map, BottleHandler.bottle_selected, prev_pour)
			prev_occurance_pour += prev_pour;
			pour_count = physics_particle_count();
            is_poured = false;
        } else {
            current_pour = physics_particle_count() - prev_occurance_pour;
            prev_value = ds_map_find_value(liquid_particles_map,BottleHandler.bottle_selected);
            prev_pour = current_pour;
			prev_occurance_pour += prev_pour;	
            ds_map_set(liquid_particles_map, BottleHandler.bottle_selected, abs(prev_pour) + prev_value);
			pour_count = physics_particle_count();
            is_poured = false;
        }
    }
}

function ResetPreviousPour() {
	for (numOfBottles = 0; numOfBottles < ds_map_size(liquid_particles_map); numOfBottles++) {
		ds_map_set(liquid_particles_map, numOfBottles, 0);
	}
}