
// After adding all required ingredients, hold space for 1 second to enter shaking state
function HoldSpaceToShake() { // AddingIngredients State
	if (keyboard_check(vk_space) && physics_particle_count() != 0) {
		if (BottleHandler.image_angle <= 30 && BottleHandler.image_angle >= -30) {
			timer += delta_time/1000000;
		} else {
			show_debug_message("Bad angle");	
		}
	} else {
		timer = 0;
	}
	if (timer >= 1) {
		GetLiquidCounts();
		StageState = GAMESTATE.ChoiceOption;	
		objectCheckCreate = false;
		CreateShakeOrStirOption();
		//CreateShakerMode();
		//CreateStirringMode();
	}
}

