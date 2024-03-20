
// After adding all required ingredients, hold space for 1 second to enter shaking state
function HoldSpaceToShake() { // AddingIngredients State
	if (keyboard_check(vk_space) && physics_particle_count() != 0) {
		timer += delta_time/1000000;
	} else {
		timer = 0;
	}
	if (timer >= 1) {
		GetLiquidCounts();
		StageState = GAMESTATE.Shaking;	
		objectCheckCreate = false;
		CreateShakerMode();
		//CreateStirringMode();
	}
}

