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
	chooseCustomer = irandom_range(0,numOfCustomer-1);
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
	StageStateHandler.currentCustomer.drawDialogBoxForSatisfaction();
	//if (ds_map_size(StageStateHandler.currentCustomer.additionalMessage) != 0) {//is empty
	//	StageStateHandler.currentCustomer.drawDialogBoxAdditionalComments();
	//}
}

//function gradeRatingSwitchCase() {
//	switch(RecipeChecker.getRating[numOfRates]) {
//		case RATE.GREAT:
//			rateScore -= 0;
//			break;
//		case RATE.GOOD:
//			rateScore -= 10;
//			break;
//		case RATE.BAD:
//			rateScore -= 100;
//			break;
//		case RATE.TOOMUCH:
//			rateScore -= 1000;
//			break;
//		case RATE.TERRIBLE:
//			rateScore -= 5000;
//			break;
//		case RATE.WRONGLIQUID:
//			wrongLiquidPoured = true;
//			break;
//	}
//}

//function setRateState() {
//	if (rateScore >= (10000-10)) {
//		messageState = MESSAGE.PERFECT;
//	} else if (rateScore >= (10000-40) && rateScore <= (10000-20)) {
//		messageState = MESSAGE.GOOD;
//	} else if (rateScore > (10000-40) && rateScore <= (10000-140)) {
//		messageState = MESSAGE.DECENT;
//	} else if (rateScore > (10000 - 2000) && rateScore < (10000-140)) {
//		messageState = MESSAGE.NOTGOOD;
//	} else if (rateScore >= (10000 - 4000) && rateScore <= (10000 - 2000)) {
//		messageState = MESSAGE.TOOSTRONG;
//	} else if (rateScore > -9999 && rateScore < (10000 - 2000)) {
//		messageState = MESSAGE.WRONGDRINK;
//	}
//}

//function getRateState() {
//	var messageState = noone;
//	var correctMix = false;
//	var wrongLiquidPoured = false;
//	var flip = 1;
//	var rateScore = 10000;
//	ds_list_sort(RecipeChecker.getRating,false)
//	if (ds_list_find_value(RecipeChecker.getRating,0) == RATE.RIGHTMIX) {
//		correctMix = true;
//	} else {
//		correctMix = false;
//	}
//	for (var numOfRates = 1; numOfRates < ds_list_size(RecipeChecker.getRating); numOfRates++) {
//		if (correctMix) {
//			show_debug_message("Get rating");
//			show_debug_message(ds_list_find_value(RecipeChecker.getRating,numOfRates));
//			switch(ds_list_find_value(RecipeChecker.getRating,numOfRates)) {
//		case RATE.GREAT:
//			rateScore -= 0;
//			break;
//		case RATE.GOOD:
//			rateScore -= 10;
//			break;
//		case RATE.BAD:
//			rateScore -= 100;
//			break;
//		case RATE.TOOMUCH:
//			rateScore -= 1000;
//			break;
//		case RATE.TERRIBLE:
//			rateScore -= 5000;
//			break;
//		case RATE.MISSING:
//			wrongLiquidPoured = true;
//			break;
//		case RATE.WRONGLIQUID:
//			wrongLiquidPoured = true;
//			break;
//	}
//		}
//		//} else {
//		//	flip *= -1;
//		//	gradeRatingSwitchCase();
//		//}
//	}
//	if (!wrongLiquidPoured) {
//		show_debug_message("rateScore");
//		show_debug_message(rateScore);
//		if (rateScore >= (10000-10)) {
//		messageState = MESSAGE.PERFECT;
//		StageStateHandler.stageScore += irandom_range(6,9);
//	} else if (rateScore >= (10000-40) && rateScore <= (10000-20)) {
//		messageState = MESSAGE.GOOD;
//		StageStateHandler.stageScore += irandom_range(4,5);
//	} else if (rateScore >= (10000-140) && rateScore < (10000-40)) {
//		messageState = MESSAGE.DECENT;
//		StageStateHandler.stageScore += irandom_range(1,3);
//	} else if (rateScore >= (10000 - 2000) && rateScore < (10000-140)) {
//		messageState = MESSAGE.NOTGOOD;
//		StageStateHandler.stageScore += irandom(1);
//	} else if (rateScore >= (10000 - 4000) && rateScore < (10000 - 2000)) {
//		messageState = MESSAGE.TOOSTRONG;
//		StageStateHandler.stageScore += irandom(1);
//	} else if (rateScore > -9999 && rateScore < (10000 - 4000)) {
//		messageState = MESSAGE.WRONGDRINK;
//		StageStateHandler.stageScore += irandom(1);
//	}	
//	} else {
//		messageState = MESSAGE.WRONGDRINK;
//	}
	
//	return messageState;
//	//show_debug_message(ds_list_find_value(RecipeChecker.getRating,0));
//	//for (var numOfRates = 0; numOfRates < ds_list_size(RecipeChecker.getRating); numOfRates++) {
//	//	show_debug_message(ds_list_find_value(RecipeChecker.getRating,numOfRates));
//	//}
	
//}
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