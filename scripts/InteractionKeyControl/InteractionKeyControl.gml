
// After adding all required ingredients, hold space for 1 second to enter shaking state
function HoldSpaceToMix() { // AddingIngredients State
	if (keyboard_check(vk_space) && physics_particle_count() != 0) {
		if (BottleHandler.image_angle <= 30 && BottleHandler.image_angle >= -30) {
			timer += delta_time/1000000;
		} else {
			// Create text one at a time, give time to be deleted.
			if (!instance_exists(placeBottleText)) {
				instance_create_layer(BottleHandler.bottleObj.x,BottleHandler.bottleObj.y,"Instances",placeBottleText);
			}
		}
	} else {
		timer = 0;
	}
	if (timer >= 0.95 && timer < 1) {
		physics_particle_delete_region_box(478, 384, 124, 152);
	} else if (timer >= 1) {
		GetLiquidCounts();
		StageState = GAMESTATE.ChoiceOption;	
		objectCheckCreate = false;
		//obj_shaker_bot.createdPhysics = false;
		CreateShakeOrStirOption();
		//CreateShakerMode();
		//CreateStirringMode();
	}
}

//540 384, Jigger W:124 H: 152 Origin top left