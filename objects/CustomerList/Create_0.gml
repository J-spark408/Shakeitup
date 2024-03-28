customers = ds_list_create();

ds_list_add(customers, spr_customer1);
ds_list_add(customers, spr_customer2);
ds_list_add(customers, spr_customer3);
ds_list_add(customers, spr_customer4);

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
event_inherited();

if (StageStateHandler.StageState == GAMESTATE.AddingIngredients) {
	sizeOfRecipes = ds_list_size(RecipeChecker.recipe_list);
	currentDrink = ds_list_find_value(RecipeChecker.recipe_list,irandom(sizeOfRecipes-1));
		
	customerList = ds_list_create();
	ds_list_add(customerList,Bob());
	ds_list_add(customerList,Alejandro());
	ds_list_add(customerList,Sally());
	ds_list_add(customerList,Michelle());

	numOfCustomer = ds_list_size(customerList);

}
function introDialog() {
	getDialog = ds_list_find_value(customerList, irandom(numOfCustomer-1));
	numOfDialogs = ds_list_size(getDialog.introCustomerMessage);
	//randomDialog = random_range(0, int64(numOfDialogs));
	getDialog.drawDialogBoxForIntro();
}

