recipe_list = ds_list_create();
ds_list_add(recipe_list,martiniRecipe());
ds_list_add(recipe_list,oldFashionedRecipe());
ds_list_add(recipe_list,margaritaRecipe());
ds_list_add(recipe_list,whiskeySourRecipe());
ds_list_add(recipe_list,moscowMuleRecipe());
ds_list_add(recipe_list,gimletRecipe());

conditionMessage = "";
getMixedRating = false;
recipeToRate = "";
listCreated = false;
	
function checkRecipe() {
	// Grade based on the particle comparison count
	// return the grade
	// Grade determines customers dialog
	getRating = ds_list_create();
	getError = ds_list_create();
	// Get Customer request and find the matching recipe
	for (var recipe_index = 0; recipe_index < ds_list_size(recipe_list); recipe_index++) {
		matchingRecipe = ds_list_find_value(recipe_list, recipe_index);
		//Recipe Found
		if (StageStateHandler.currentDrink.RecipeName == matchingRecipe.RecipeName) {	
			recipeToRate = matchingRecipe;
			LiquidPourList = [];
			ds_map_keys_to_array(LiquidTracker.liquid_particles_map,LiquidPourList)
			// Loop through LiquidTracker liquid particles map to compare against the recipe map
			for (var liquidPour_index = 0; liquidPour_index < array_length(LiquidPourList); liquidPour_index++) {
				liquidToCompare = LiquidPourList[liquidPour_index]; // LIQUOR index ex. Vodka: 0, Vermouth: 4
				liquidParticlesPlayerInputed = ds_map_find_value(LiquidTracker.liquid_particles_map,liquidToCompare);
				if (ds_map_exists(matchingRecipe.IngredientsMap,liquidToCompare)) {
					checkRecipeConditions();
				} else { //These Liquids that should not be in this drink
					//print out the count of the liquid type and how much of it there was
					if (liquidParticlesPlayerInputed > 50) {
						ds_list_add(getError,ERROR.WRONGLIQUID); // Pour liquid not in the recipe
					} else if (liquidParticlesPlayerInputed <= 50 && liquidParticlesPlayerInputed > 0) {
						ds_list_add(getRating,RATE.BAD);	
					}
				}
			}
		}
	}
	getMixedRating = false;
}

function checkRecipeConditions() { // Lets Add if ingredientsValue > 400 (for main liquor) because it has higher volume
	if (ds_map_exists(matchingRecipe.IngredientsMap,liquidToCompare)) {
		ingredientsValue = matchingRecipe.getLiquidValue(liquidToCompare);
		if (ingredientsValue >= 300) {
			if (liquidParticlesPlayerInputed <= ingredientsValue + (ingredientsValue * .1) && liquidParticlesPlayerInputed >= ingredientsValue - (ingredientsValue * .1)) {
				ds_list_add(getRating, RATE.GREAT) // Pour perfectly within the range
			} else if (liquidParticlesPlayerInputed > ingredientsValue + (ingredientsValue * .1) 
			&& liquidParticlesPlayerInputed <= ingredientsValue + (ingredientsValue * .20)) { 
				ds_list_add(getRating,RATE.GOOD); // Pour more than 10% to 20% recipe amount
			} else if (liquidParticlesPlayerInputed > ingredientsValue + (ingredientsValue * .2)) {
				ds_list_add(getError,ERROR.TOOMUCH); // Pour more than 20% of recipe amount
			} else if (liquidParticlesPlayerInputed < ingredientsValue - (ingredientsValue * .1) 
			&& liquidParticlesPlayerInputed >= ingredientsValue - (ingredientsValue * .2)) {
				ds_list_add(getRating,RATE.BAD); // Pour less than 10% to 20% recipe amount
			} else if (liquidParticlesPlayerInputed < ingredientsValue - (ingredientsValue * .2) 
			&& liquidParticlesPlayerInputed >= ingredientsValue - (ingredientsValue * .5)) {
				ds_list_add(getRating,RATE.TERRIBLE); // Pour less than 20% to 50% of recipe amount
			} else if (liquidParticlesPlayerInputed < ingredientsValue - (ingredientsValue * .5) 
			&& liquidParticlesPlayerInputed > 0) {
				ds_list_add(getRating,RATE.FAIL);
				ds_list_add(getError,ERROR.MISSING); // Pour less than 50%
			}
		} else {
			if (liquidParticlesPlayerInputed <= ingredientsValue + (ingredientsValue * .1) && liquidParticlesPlayerInputed >= ingredientsValue - (ingredientsValue * .1)) {
				ds_list_add(getRating, RATE.GREAT) // Pour perfectly within the range
			} else if (liquidParticlesPlayerInputed > ingredientsValue + (ingredientsValue * .1) 
			&& liquidParticlesPlayerInputed <= ingredientsValue + (ingredientsValue * .35)) { 
				ds_list_add(getRating,RATE.GOOD); // Pour more than 10% to 35% recipe amount
			} else if (liquidParticlesPlayerInputed > ingredientsValue + (ingredientsValue * .35)) {
				ds_list_add(getError,ERROR.TOOMUCH); // Pour more than 35% of recipe amount
			} else if (liquidParticlesPlayerInputed < ingredientsValue - (ingredientsValue * .1) 
			&& liquidParticlesPlayerInputed >= ingredientsValue - (ingredientsValue * .35)) {
				ds_list_add(getRating,RATE.BAD); // Pour less than 10% to 35% recipe amount
			} else if (liquidParticlesPlayerInputed < ingredientsValue - (ingredientsValue * .35) 
			&& liquidParticlesPlayerInputed > ingredientsValue - (ingredientsValue * .65)) {
				ds_list_add(getRating,RATE.TERRIBLE); // Pour less than 35% to 65% of recipe amount
			} else if (liquidParticlesPlayerInputed < ingredientsValue - (ingredientsValue * .65) 
			&& liquidParticlesPlayerInputed > 0) {
				ds_list_add(getRating,RATE.FAIL);
				ds_list_add(getError,ERROR.MISSING); // Pour Less than 65%
			}
		}
	} 
	if (!getMixedRating) {
		if (matchingRecipe.MixChoice == StageStateHandler.mixChoice) {
			ds_list_add(getError,ERROR.RIGHTMIX); // selected the right mixing option
		} else {
			ds_list_add(getError,ERROR.WRONGMIX); // wrong mixing option
		}
		getMixedRating = true;
	}
}



