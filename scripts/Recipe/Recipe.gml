
function Recipe(rName,rMap,rMix,rColor,rGlass) constructor{
	RecipeName = rName;
	IngredientsMap = rMap;
	MixChoice = rMix;
	LiquidColor = rColor;
	GlassType = rGlass;
	
	//USAGE: Recipe.getLiquidValue(LIQUOR.VODKA)
	getLiquidValue = function(liquidTocheck) {
		return ds_map_find_value(IngredientsMap,liquidTocheck);
	}
	
}

function martiniRecipe(){
	ingredients = ds_map_create();
	ds_map_add(ingredients,LIQUOR.VODKA, 600);
	ds_map_add(ingredients,LIQUOR.VERMOUTH, 100);
	return new Recipe("Martini",ingredients,MixChoiceHandler.shaking,LIQUIDCOLOR.CLEAR,MartiniGlass);
}

function oldFashionedRecipe(){
	ingredients = ds_map_create();
	ds_map_add(ingredients,LIQUOR.WHISKEY, 400);
	ds_map_add(ingredients,LIQUOR.BITTER, 4);
	ds_map_add(ingredients,LIQUOR.SIMPLESYRUP, 60);
	return new Recipe("Old Fashioned",ingredients,MixChoiceHandler.stirring,LIQUIDCOLOR.BROWN,RockGlass);
}

function margaritaRecipe() {
	ingredients = ds_map_create();
	ds_map_add(ingredients,LIQUOR.TEQUILA, 400);
	ds_map_add(ingredients,LIQUOR.ORANGELIQUEUR, 100);
	ds_map_add(ingredients,LIQUOR.SIMPLESYRUP, 100);
	ds_map_add(ingredients,LIQUOR.LIMEJUICE, 150);
	return new Recipe("Margarita",ingredients,MixChoiceHandler.shaking,LIQUIDCOLOR.YELLOW,RockGlass);
}

function whiskeySourRecipe(){
	ingredients = ds_map_create();
	ds_map_add(ingredients,LIQUOR.WHISKEY, 400);
	//ds_map_add(ingredients,LIQUOR.LEMONJUICE, 150);
	ds_map_add(ingredients,LIQUOR.SIMPLESYRUP, 150);
	return new Recipe("Whiskey Sour",ingredients,MixChoiceHandler.shaking,LIQUIDCOLOR.CLEAR,RockGlass);
}

function moscowMuleRecipe(){
	ingredients = ds_map_create();
	ds_map_add(ingredients,LIQUOR.VODKA, 400);
	ds_map_add(ingredients,LIQUOR.LIMEJUICE, 100);
	//ds_map_add(ingredients,LIQUOR.GINGERBEER, 600);
	return new Recipe("Moscow Mule",ingredients,MixChoiceHandler.shaking,LIQUIDCOLOR.BROWN,RockGlass);
}

function gimletRecipe() {
	ingredients = ds_map_create();
	ds_map_add(ingredients,LIQUOR.GIN, 400);
	ds_map_add(ingredients,LIQUOR.SIMPLESYRUP, 150);
	ds_map_add(ingredients,LIQUOR.LIMEJUICE, 150);
	return new Recipe("Gimlet",ingredients,MixChoiceHandler.shaking,LIQUIDCOLOR.YELLOW,RockGlass);
}