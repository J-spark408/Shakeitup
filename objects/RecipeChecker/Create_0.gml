recipe_list = ds_list_create()
ds_list_add(recipe_list,martiniRecipe());
ds_list_add(recipe_list,oldFashionedRecipe());

function checkRecipe() {
	// What is customer's request
	// Get Customer request then check recipe list for the ingredients map
	// Loop through ingredients map to check the liquid particles map
	// Grade based on the particle comparison count
	// return the grade
	// Grade determines customers dialog
	for (var recipe_index = 0; recipe_index < ds_list_size(recipe_list); recipe_index++) {
		matchingRecipe =  ds_list_find_value(recipe_list, recipe_index);
		if (obj_DialogCustomer.request == matchingRecipe.RecipeName) {
			
			IngredientsMapKeysList = [];
			ds_map_keys_to_array(matchingRecipe.IngredientsMap,IngredientsMapKeysList)
			for (var ingredients_index = 0; ingredients_index < array_length(IngredientsMapKeysList); ingredients_index++) {
				liquidToCompare = IngredientsMapKeysList[ingredients_index];
				liquidParticlesPlayerInputed = ds_map_find_value(LiquidTracker.liquid_particles_map,liquidToCompare)
			}
		}
	}
}