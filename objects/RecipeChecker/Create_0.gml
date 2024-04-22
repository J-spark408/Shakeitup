recipe_list = ds_list_create();
if (global.current_stage == 0) {
	ds_list_add(recipe_list,martiniRecipe());
	ds_list_add(recipe_list,oldFashionedRecipe());
	ds_list_add(recipe_list,margaritaRecipe());
} else if (global.current_stage == 1) {
	ds_list_add(recipe_list,whiskeySourRecipe());
	ds_list_add(recipe_list,moscowMuleRecipe());
	ds_list_add(recipe_list,gimletRecipe());
}
conditionMessage = "";
getMixedRating = false;

function checkRecipe() {
	// Grade based on the particle comparison count
	// return the grade
	// Grade determines customers dialog
	getRating = ds_list_create();
	// Get Customer request and find the matching recipe
	for (var recipe_index = 0; recipe_index < ds_list_size(recipe_list); recipe_index++) {
		matchingRecipe =  ds_list_find_value(recipe_list, recipe_index);
		//Recipe Found
		if (StageStateHandler.currentDrink.RecipeName == matchingRecipe.RecipeName) {	
			LiquidPourList = [];
			ds_map_keys_to_array(LiquidTracker.liquid_particles_map,LiquidPourList)
			// Loop through LiquidTracker liquid particles map to compare against the recipe map
			for (var liquidPour_index = 0; liquidPour_index < array_length(LiquidPourList); liquidPour_index++) {
				liquidToCompare = LiquidPourList[liquidPour_index]; // LIQUOR index ex. Vodka: 0, Vermouth: 4
				liquidParticlesPlayerInputed = ds_map_find_value(LiquidTracker.liquid_particles_map,liquidToCompare);
				if (ds_map_exists(matchingRecipe.IngredientsMap,liquidToCompare)) {
					checkRecipeConditions();
				}
			}
		}
	}
	getMixedRating = false;
}

function checkRecipeConditions() {
	if (ds_map_exists(matchingRecipe.IngredientsMap,liquidToCompare)) {
		show_debug_message(liquidParticlesPlayerInputed);
		ingredientsValue = matchingRecipe.getLiquidValue(liquidToCompare);
		if (liquidParticlesPlayerInputed <= ingredientsValue + (ingredientsValue * .1) && liquidParticlesPlayerInputed >= ingredientsValue - (ingredientsValue * .1)) {
			ds_list_add(getRating, RATE.GREAT) // Pour perfectly within the range
		} else if (liquidParticlesPlayerInputed > ingredientsValue + (ingredientsValue * .1)) { 
			ds_list_add(getRating,RATE.GOOD); // Pour more than 10% recipe amount
		} else if (liquidParticlesPlayerInputed > ingredientsValue + (ingredientsValue * .4)) {
			ds_list_add(getRating,RATE.TOOMUCH); // Pour more than 40% of recipe amount
		} else if (liquidParticlesPlayerInputed < ingredientsValue - (ingredientsValue * .1) &&
				   liquidParticlesPlayerInputed >= ingredientsValue - (ingredientsValue * .4)) {
			ds_list_add(getRating,RATE.BAD); // Pour less than 10% recipe amount
		} else if (liquidParticlesPlayerInputed <= ingredientsValue - (ingredientsValue * .4) &&
				   liquidParticlesPlayerInputed > 0) {
			ds_list_add(getRating,RATE.TERRIBLE); // Pour less than 40% of recipe amount
		} else if (liquidParticlesPlayerInputed == 0) {
			ds_list_add(getRating,RATE.MISSING);	
		}
	} else { //These Liquids that should not be in this drink
		//print out the count of the liquid type and how much of it there was
		if (liquidParticlesPlayerInputed > 50) {
			ds_list_add(getRating,RATE.WRONGLIQUID); // Pour liquid not in the recipe
		} else if (liquidParticlesPlayerInputed <= 50 && liquidParticlesPlayerInputed > 0) {
			ds_list_add(getRating,RATE.GOOD);	
		}
	}
	if (!getMixedRating) {
		if (matchingRecipe.MixChoice == StageStateHandler.mixChoice) {
			ds_list_add(getRating,RATE.RIGHTMIX); // selected the right mixing option
		} else {
			ds_list_add(getRating,RATE.WRONGMIX); // wrong mixing option
		}
		getMixedRating = true;
	}
}



