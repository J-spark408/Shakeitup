function Customer(cSprite, cIntroList, cSatisfiedList) constructor {
	sprite = cSprite;
	introCustomerMessage = cIntroList;
	satisfactedMessage = cSatisfiedList;
	//dialog = new Dialogue(); //Customer.dialog to access add/pop/count or _dialogs
	
	drawDialogBoxForIntro = function() {
		DialogHandler.dialog.add(sprite, ds_list_find_value(introCustomerMessage,irandom_range(0,CustomerList.numOfDialogs-1)));
	}
	
	
	drawDialogBoxForSatisfaction = function(){
		DialogHandler.dialog.add(sprite, ds_map_find_value(satisfactedMessage,RatingFunctions.getRateState()));
	}
	
	//create function to randomly grab a introcustomermessage
//	getRandomDialog = function () {
//		numOfDialogs = ds_list_size(introCustomerMessage);
//		randomDialog = random_range(0, int64(numOfDialogs));
//		return ds_list_find_value(introCustomerMessage,randomDialog);
//	}
}

function Bob() {
	introMessage = ds_list_create();
	ds_list_add(introMessage, "Hello *hiccups*, can I get a " + string_lower(StageStateHandler.currentDrink.RecipeName));
	ds_list_add(introMessage, "How is it going, can I order a " + string_lower(StageStateHandler.currentDrink.RecipeName));
	ds_list_add(introMessage, "Howdy, one " + string_lower(StageStateHandler.currentDrink.RecipeName) + " please");
	endMessage = ds_map_create();
	ds_map_add(endMessage, MESSAGE.PERFECT, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is perfect");
	ds_map_add(endMessage, MESSAGE.GOOD, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is good");
	ds_map_add(endMessage, MESSAGE.DECENT, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is decent");
	ds_map_add(endMessage, MESSAGE.NOTGOOD, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is not good");
	ds_map_add(endMessage, MESSAGE.TOOSTRONG, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is too strong");
	ds_map_add(endMessage, MESSAGE.GREATBUTWRONGMIX, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is great but shouldnt " + StageStateHandler.mixChoice + " it");
	ds_map_add(endMessage, MESSAGE.WRONGDRINK, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is wrong");
	return new Customer(spr_customer1, introMessage,endMessage);
}

function Alejandro() {
	introMessage = ds_list_create();
	ds_list_add(introMessage, "Hey there, may I get a " + string_lower(StageStateHandler.currentDrink.RecipeName));
	ds_list_add(introMessage, "Hello, let me get a " + string_lower(StageStateHandler.currentDrink.RecipeName));
	endMessage = ds_map_create();
	ds_map_add(endMessage, MESSAGE.PERFECT, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is perfect");
	ds_map_add(endMessage, MESSAGE.GOOD, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is good");
	ds_map_add(endMessage, MESSAGE.DECENT, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is decent");
	ds_map_add(endMessage, MESSAGE.NOTGOOD, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is not good");
	ds_map_add(endMessage, MESSAGE.TOOSTRONG, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is too strong");
	ds_map_add(endMessage, MESSAGE.GREATBUTWRONGMIX, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is great but shouldnt " + StageStateHandler.mixChoice + " it");
	ds_map_add(endMessage, MESSAGE.WRONGDRINK, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is wrong");
	return new Customer(spr_customer2, introMessage,endMessage);
}

function Sally() {
	introMessage = ds_list_create();
	ds_list_add(introMessage, "Hi, how are you. May I please get a " + string_lower(StageStateHandler.currentDrink.RecipeName));
	ds_list_add(introMessage, "Hey, I would love a " + string_lower(StageStateHandler.currentDrink.RecipeName) + ", thank you");
	endMessage = ds_map_create();
	ds_map_add(endMessage, MESSAGE.PERFECT, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is perfect");
	ds_map_add(endMessage, MESSAGE.GOOD, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is good");
	ds_map_add(endMessage, MESSAGE.DECENT, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is decent");
	ds_map_add(endMessage, MESSAGE.NOTGOOD, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is not good");
	ds_map_add(endMessage, MESSAGE.TOOSTRONG, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is too strong");
	ds_map_add(endMessage, MESSAGE.GREATBUTWRONGMIX, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is great but shouldnt " + StageStateHandler.mixChoice + " it");
	ds_map_add(endMessage, MESSAGE.WRONGDRINK, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is wrong");
	return new Customer(spr_customer3, introMessage,endMessage);
}

function Michelle() {
	introMessage = ds_list_create();
	ds_list_add(introMessage, "Hi there, I would like a " + string_lower(StageStateHandler.currentDrink.RecipeName));
	ds_list_add(introMessage, "Hello, could I get a " + string_lower(StageStateHandler.currentDrink.RecipeName));
	endMessage = ds_map_create();
	ds_map_add(endMessage, MESSAGE.PERFECT, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is perfect");
	ds_map_add(endMessage, MESSAGE.GOOD, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is good");
	ds_map_add(endMessage, MESSAGE.DECENT, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is decent");
	ds_map_add(endMessage, MESSAGE.NOTGOOD, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is not good");
	ds_map_add(endMessage, MESSAGE.TOOSTRONG, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is too strong");
	ds_map_add(endMessage, MESSAGE.GREATBUTWRONGMIX, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is great but shouldnt " + StageStateHandler.mixChoice + " it");
	ds_map_add(endMessage, MESSAGE.WRONGDRINK, "This " + string_lower(StageStateHandler.currentDrink.RecipeName) + " is wrong");
	return new Customer(spr_customer4, introMessage,endMessage);
}