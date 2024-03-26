
function Recipe(rName,rMap) constructor{
	RecipeName = rName;
	IngredientsMap = rMap;
	
	
	//USAGE: Recipe.getLiquidValue(LIQUOR.VODKA)
	getLiquidValue = function(liquidTocheck) {
		return ds_map_find_value(IngredientsMap,liquidTocheck);
	}
	
}

function martiniRecipe(){
	ingredients = ds_map_create()
	ds_map_add(ingredients,LIQUOR.VODKA, 600);
	ds_map_add(ingredients,LIQUOR.VERMOUTH, 100);
	return new Recipe("Martini",ingredients);
}

function oldFashionedRecipe(){
	ingredients = ds_map_create()
	ds_map_add(ingredients,LIQUOR.WHISKEY, 400);
	ds_map_add(ingredients,LIQUOR.BITTER, 4);
	ds_map_add(ingredients,LIQUOR.BARSYRUP, 60);
	return new Recipe("Old Fashioned",ingredients);
}