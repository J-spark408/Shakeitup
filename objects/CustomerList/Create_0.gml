event_inherited();

if (StageStateHandler.StageState == GAMESTATE.AddingIngredients) {
	for (var numOfStage = 0; numOfStage < StageData.stage_size; numOfStage++) {
		getStage = ds_list_find_value(StageData.stage_list,numOfStage);
		if (global.current_stage == getStage.stage_level) {
			StageStateHandler.drinkToMake = ds_list_find_value(getStage.stageDrinkList,irandom(ds_list_size(getStage.stageDrinkList)-1));
		}
	}
	
	sizeOfRecipes = ds_list_size(RecipeChecker.recipe_list);
	for (var numOfRecipes = 0 ; numOfRecipes < sizeOfRecipes; numOfRecipes++) {
		getRecipe = ds_list_find_value(RecipeChecker.recipe_list,numOfRecipes);
		if (StageStateHandler.drinkToMake == getRecipe.RecipeName) {
			StageStateHandler.currentDrink = getRecipe;	
		}	
	}
}

if (StageStateHandler.StageState == GAMESTATE.AddingIngredients || StageStateHandler.StageState == GAMESTATE.ShowCasing) {
	customerList = ds_list_create();
	ds_list_add(customerList,Bob());
	ds_list_add(customerList,Alejandro());
	ds_list_add(customerList,Sally());
	ds_list_add(customerList,Michelle());
	numOfCustomer = ds_list_size(customerList);
	chooseCustomer = irandom_range(0,numOfCustomer-1);
	getDialog = ds_list_find_value(customerList, chooseCustomer);
}

function introDialog() {
	StageStateHandler.currentCustomer = getDialog;
	numOfDialogs = ds_list_size(StageStateHandler.currentCustomer.introCustomerMessage);
	StageStateHandler.currentCustomer.drawDialogBoxForIntro();
}

function satisfactionDialog() {
	StageStateHandler.currentCustomer.drawDialogBoxForSatisfaction();
	StageStateHandler.currentCustomer.drawDialogBoxAdditionalComments();
}