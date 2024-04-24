function Customer(cSprite, cIntroList, cSatisfiedList, cAdditionalMessage) constructor {
	sprite = cSprite;
	introCustomerMessage = cIntroList;
	satisfactedMessage = cSatisfiedList;	
	additionalMessage = cAdditionalMessage
	//dialog = new Dialogue(); //Customer.dialog to access add/pop/count or _dialogs
	
	drawDialogBoxForIntro = function() {
		DialogHandler.dialog.add(sprite, ds_list_find_value(introCustomerMessage,irandom_range(0,CustomerList.numOfDialogs-1)));
	}	
	
	drawDialogBoxForSatisfaction = function(){
		DialogHandler.dialog.add(sprite, ds_map_find_value(satisfactedMessage,RatingFunctions.getRateState()));
	}
	
	drawDialogBoxAdditionalComments = function() {
		if (RatingFunctions.getErrorState() != noone) {
			DialogHandler.dialog.add(sprite, ds_map_find_value(additionalMessage,RatingFunctions.getErrorState()));
		}
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
	ds_list_add(introMessage, "Hello *hiccups*, can I get a " + string_lower(StageStateHandler.drinkToMake));
	ds_list_add(introMessage, "How is it going, can I order a " + string_lower(StageStateHandler.drinkToMake));
	ds_list_add(introMessage, "Howdy, one " + string_lower(StageStateHandler.drinkToMake) + " please");
	endMessage = ds_map_create();
	ds_map_add(endMessage, MESSAGE.PERFECT, "This " + string_lower(StageStateHandler.drinkToMake) + " is perfect");
	ds_map_add(endMessage, MESSAGE.GOOD, "This " + string_lower(StageStateHandler.drinkToMake) + " is good");
	ds_map_add(endMessage, MESSAGE.DECENT, "This " + string_lower(StageStateHandler.drinkToMake) + " is decent");
	ds_map_add(endMessage, MESSAGE.NOTGOOD, "This " + string_lower(StageStateHandler.drinkToMake) + " is not good");
	ds_map_add(endMessage, MESSAGE.TERRIBLE, "This " + string_lower(StageStateHandler.drinkToMake) + " is terrible");
	ds_map_add(endMessage, MESSAGE.FAIL, "This " + string_lower(StageStateHandler.drinkToMake) + " fails");
	additionalMessage = ds_map_create();
	ds_map_add(additionalMessage, MESSAGE.GREATBUTWRONGMIX, "This " + string_lower(StageStateHandler.drinkToMake) + " is great but should have " + StageStateHandler.currentDrink.MixChoice + " it");
	ds_map_add(additionalMessage, MESSAGE.WRONGMIX, "But shouldn't it be " + StageStateHandler.currentDrink.MixChoice + "?");
	ds_map_add(additionalMessage, MESSAGE.MISSING, "Something is missing...");
	ds_map_add(additionalMessage, MESSAGE.TOOSTRONG, "Something taste too strong");
	ds_map_add(additionalMessage, MESSAGE.WRONGDRINK, "I think this is the wrong drink");
	return new Customer(spr_customer1, introMessage,endMessage,additionalMessage);
}

function Alejandro() {
	introMessage = ds_list_create();
	ds_list_add(introMessage, "Hey there, may I get a " + string_lower(StageStateHandler.drinkToMake));
	ds_list_add(introMessage, "Hello, let me get a " + string_lower(StageStateHandler.drinkToMake));
	ds_map_add(endMessage, MESSAGE.PERFECT, "This " + string_lower(StageStateHandler.drinkToMake) + " is perfect");
	ds_map_add(endMessage, MESSAGE.GOOD, "This " + string_lower(StageStateHandler.drinkToMake) + " is good");
	ds_map_add(endMessage, MESSAGE.DECENT, "This " + string_lower(StageStateHandler.drinkToMake) + " is decent");
	ds_map_add(endMessage, MESSAGE.NOTGOOD, "This " + string_lower(StageStateHandler.drinkToMake) + " is not good");
	ds_map_add(endMessage, MESSAGE.TERRIBLE, "This " + string_lower(StageStateHandler.drinkToMake) + " is terrible");
	ds_map_add(endMessage, MESSAGE.FAIL, "This " + string_lower(StageStateHandler.drinkToMake) + " fails");
	additionalMessage = ds_map_create();
	ds_map_add(additionalMessage, MESSAGE.GREATBUTWRONGMIX, "This " + string_lower(StageStateHandler.drinkToMake) + " is great but should have " + StageStateHandler.currentDrink.MixChoice + " it");
	ds_map_add(additionalMessage, MESSAGE.WRONGMIX, "But shouldn't it be " + StageStateHandler.currentDrink.MixChoice + "?");
	ds_map_add(additionalMessage, MESSAGE.MISSING, "Something is missing...");
	ds_map_add(additionalMessage, MESSAGE.TOOSTRONG, "Something taste too strong");
	ds_map_add(additionalMessage, MESSAGE.WRONGDRINK, "I think this is the wrong drink");
	ds_map_add(endMessage, MESSAGE.WRONGDRINK, "This " + string_lower(StageStateHandler.drinkToMake) + " is wrong");
	return new Customer(spr_customer2, introMessage,endMessage,additionalMessage);
}

function Sally() {
	introMessage = ds_list_create();
	ds_list_add(introMessage, "Hi, how are you. May I please get a " + string_lower(StageStateHandler.drinkToMake));
	ds_list_add(introMessage, "Hey, I would love a " + string_lower(StageStateHandler.drinkToMake) + ", thank you");
	endMessage = ds_map_create();
	ds_map_add(endMessage, MESSAGE.PERFECT, "This " + string_lower(StageStateHandler.drinkToMake) + " is perfect");
	ds_map_add(endMessage, MESSAGE.GOOD, "This " + string_lower(StageStateHandler.drinkToMake) + " is good");
	ds_map_add(endMessage, MESSAGE.DECENT, "This " + string_lower(StageStateHandler.drinkToMake) + " is decent");
	ds_map_add(endMessage, MESSAGE.NOTGOOD, "This " + string_lower(StageStateHandler.drinkToMake) + " is not good");
	ds_map_add(endMessage, MESSAGE.TERRIBLE, "This " + string_lower(StageStateHandler.drinkToMake) + " is terrible");
	ds_map_add(endMessage, MESSAGE.FAIL, "This " + string_lower(StageStateHandler.drinkToMake) + " fails");
	additionalMessage = ds_map_create();
	ds_map_add(additionalMessage, MESSAGE.GREATBUTWRONGMIX, "This " + string_lower(StageStateHandler.drinkToMake) + " is great but should have " + StageStateHandler.currentDrink.MixChoice + " it");
	ds_map_add(additionalMessage, MESSAGE.WRONGMIX, "But shouldn't it be " + StageStateHandler.currentDrink.MixChoice + "?");
	ds_map_add(additionalMessage, MESSAGE.MISSING, "Something is missing...");
	ds_map_add(additionalMessage, MESSAGE.TOOSTRONG, "Something taste too strong");
	ds_map_add(additionalMessage, MESSAGE.WRONGDRINK, "I think this is the wrong drink");
	return new Customer(spr_customer3, introMessage,endMessage,additionalMessage);
}

function Michelle() {
	introMessage = ds_list_create();
	ds_list_add(introMessage, "Hi there, I would like a " + string_lower(StageStateHandler.drinkToMake));
	ds_list_add(introMessage, "Hello, could I get a " + string_lower(StageStateHandler.drinkToMake));
	endMessage = ds_map_create();
	ds_map_add(endMessage, MESSAGE.PERFECT, "This " + string_lower(StageStateHandler.drinkToMake) + " is perfect");
	ds_map_add(endMessage, MESSAGE.GOOD, "This " + string_lower(StageStateHandler.drinkToMake) + " is good");
	ds_map_add(endMessage, MESSAGE.DECENT, "This " + string_lower(StageStateHandler.drinkToMake) + " is decent");
	ds_map_add(endMessage, MESSAGE.NOTGOOD, "This " + string_lower(StageStateHandler.drinkToMake) + " is not good");
	ds_map_add(endMessage, MESSAGE.TERRIBLE, "This " + string_lower(StageStateHandler.drinkToMake) + " is terrible");
	ds_map_add(endMessage, MESSAGE.FAIL, "This " + string_lower(StageStateHandler.drinkToMake) + " fails");
	additionalMessage = ds_map_create();
	ds_map_add(additionalMessage, MESSAGE.GREATBUTWRONGMIX, "This " + string_lower(StageStateHandler.drinkToMake) + " is great but should have " + StageStateHandler.currentDrink.MixChoice + " it");
	ds_map_add(additionalMessage, MESSAGE.WRONGMIX, "But shouldn't it be " + StageStateHandler.currentDrink.MixChoice + "?");
	ds_map_add(additionalMessage, MESSAGE.MISSING, "Something is missing...");
	ds_map_add(additionalMessage, MESSAGE.TOOSTRONG, "Something taste too strong");
	ds_map_add(additionalMessage, MESSAGE.WRONGDRINK, "I think this is the wrong drink");
	return new Customer(spr_customer4, introMessage,endMessage,additionalMessage);
}