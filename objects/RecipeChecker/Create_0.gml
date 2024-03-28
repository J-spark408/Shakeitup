recipe_list = ds_list_create()
ds_list_add(recipe_list,martiniRecipe());
ds_list_add(recipe_list,oldFashionedRecipe());
conditionMessage = "";
function checkRecipe() {
	// Grade based on the particle comparison count
	// return the grade
	// Grade determines customers dialog
	
	// Get Customer request and find the matching recipe
	for (var recipe_index = 0; recipe_index < ds_list_size(recipe_list); recipe_index++) {
		matchingRecipe =  ds_list_find_value(recipe_list, recipe_index);
		show_debug_message(matchingRecipe);
		//Recipe Found
		if (CustomerList.currentDrink.RecipeName == matchingRecipe.RecipeName) {		
			LiquidPourList = [];
			ds_map_keys_to_array(LiquidTracker.liquid_particles_map,LiquidPourList)
			// Loop through LiquidTracker liquid particles map to compare against the recipe map
			for (var liquidPour_index = 0; liquidPour_index < array_length(LiquidPourList); liquidPour_index++) {
				liquidToCompare = LiquidPourList[liquidPour_index]; // LIQUOR index ex. Vodka: 0, Vermouth: 4
				liquidParticlesPlayerInputed = ds_map_find_value(LiquidTracker.liquid_particles_map,liquidToCompare);
				//LiquidPourList matches Recipe IngredientsMap
				if (ds_map_exists(matchingRecipe.IngredientsMap,liquidToCompare)) {
					ingredientsValue = matchingRecipe.getLiquidValue(liquidToCompare);
					if (liquidParticlesPlayerInputed <= ingredientsValue + (ingredientsValue * .1) && liquidParticlesPlayerInputed >= ingredientsValue - (ingredientsValue * .1)) {
						conditionMessage += "Pour is good, its in the range";
					} else if (liquidParticlesPlayerInputed > ingredientsValue + (ingredientsValue * .1)) {
						conditionMessage += string(liquidToCompare) + " is poured, and poured " + string(liquidParticlesPlayerInputed - ingredientsValue) + " more compared to required value of " + string(ingredientsValue);
					}
					else if (liquidParticlesPlayerInputed < ingredientsValue - (ingredientsValue * .1)) {
						conditionMessage += string(liquidToCompare) + " is poured, and poured " + string(liquidParticlesPlayerInputed - ingredientsValue) + " less compared to value of " + string(ingredientsValue);
					}
					if (matchingRecipe.MixChoice == StageStateHandler.mixChoice) {
						conditionMessage += " It is nicely " + string(matchingRecipe.MixChoice);	
					} else {
						conditionMessage += " This should'nt have been " + string(matchingRecipe.MixChoice) + "...";	
					}
					show_debug_message(conditionMessage);
					conditionMessage = "";
				}
				else{ //These Liquids that should not be in this drink
					//print out the count of the liquid type and how much of it there was
					if (liquidParticlesPlayerInputed > 50) {
						conditionMessage += string(liquidToCompare) + " is poured, but should not have, " + string(liquidParticlesPlayerInputed) + " amount has poured"
					} else if (liquidParticlesPlayerInputed <= 50 && liquidParticlesPlayerInputed > 0) {
						conditionMessage += "its slightly added but its fine";	
					}
					show_debug_message(conditionMessage);
					conditionMessage = "";
				}
				
			
			}
		}
	}
}