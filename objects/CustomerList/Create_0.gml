event_inherited();

if (StageStateHandler.StageState == GAMESTATE.AddingIngredients) {
	sizeOfRecipes = ds_list_size(RecipeChecker.recipe_list);
	StageStateHandler.currentDrink = ds_list_find_value(RecipeChecker.recipe_list,irandom_range(0,sizeOfRecipes-1));
	//show_debug_message(sizeOfRecipes)
	//show_debug_message(irandom(sizeOfRecipes-1));
}

if (StageStateHandler.StageState == GAMESTATE.AddingIngredients || StageStateHandler.StageState == GAMESTATE.ShowCasing) {
	customerList = ds_list_create();
	ds_list_add(customerList,Bob());
	ds_list_add(customerList,Alejandro());
	ds_list_add(customerList,Sally());
	ds_list_add(customerList,Michelle());
	
	numOfCustomer = ds_list_size(customerList);
	chooseCustomer = 0//irandom_range(0,numOfCustomer-1);
	getDialog = ds_list_find_value(customerList, chooseCustomer);
}

function introDialog() {
	StageStateHandler.currentCustomer = getDialog;
	numOfDialogs = ds_list_size(StageStateHandler.currentCustomer.introCustomerMessage);
	//randomDialog = random_range(0, int64(numOfDialogs));
	StageStateHandler.currentCustomer.drawDialogBoxForIntro();
}

function satisfactionDialog() {
	//numOfDialogs = ds_list_size(StageStateHandler.currentCustomer.satisfactedMessage);
	getRateState()
	StageStateHandler.currentCustomer.drawDialogBoxForSatisfaction();
	StageStateHandler.currentCustomer = noone;
	StageStateHandler.currentDrink = noone;
}


function getRateState() {
	ds_list_sort(RecipeChecker.getRating,false)
	for (var numOfRates = 0; numOfRates < ds_list_size(RecipeChecker.getRating); numOfRates++) {
		show_debug_message(ds_list_find_value(RecipeChecker.getRating,numOfRates));
	}
	
}
//sizeOfRecipes = ds_list_size(RecipeChecker.recipe_list);
//randomDrink = random_range(0,sizeOfRecipes);
//currentDrink = ds_list_find_value(RecipeChecker.recipe_list,int64(randomDrink));

//customerList = ds_list_create()

//bob = new Customer(bob.customerOrder,bob.sprite,bob.score,bob.introCustomerMessage,bob.customerSatisfactionMessage);
//bob.customerOrder = currentDrink;
//ds_list_add(bob.introCustomerMessage, "Hello *hiccup* there, can I get a ");
//ds_list_add(bob.introCustomerMessage, "Fuck you, give me a " + customerOrder);
//bob.customerSatisfactionMessage = "";
//bob.sprite = spr_customer1;
////...
//ds_list_add(customerList,bob);

//alejandro = new Customer();
//alejandro.customerOrder = "Martini";
//alejandro.customerSatisfactionMessage = "Como estas?";
//alejandro.sprite = spr_customer2;
//ds_list_add(customerList,alejandro);


//ds_list_find_value(customerList,random_index).drawDialogBoxForIntro() //call based on customer list