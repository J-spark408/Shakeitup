function Customer(cSprite, cIntroList) constructor {
	sprite = cSprite;
	introCustomerMessage = cIntroList;
	//dialog = new Dialogue(); //Customer.dialog to access add/pop/count or _dialogs
	
	drawDialogBoxForIntro = function() {
		DialogHandler.dialog.add(sprite, ds_list_find_value(introCustomerMessage,irandom(CustomerList.numOfDialogs-1)));
	}
	
	
	//drawDialogBoxForSatisfaction = function(){
	//	dialog.add(sprite, customerSatisfactionMessage);
	//	//instance_create_layer(0,0,"Instances",DialogCustomers);
	//}
	
	//create function to randomly grab a introcustomermessage
//	getRandomDialog = function () {
//		numOfDialogs = ds_list_size(introCustomerMessage);
//		randomDialog = random_range(0, int64(numOfDialogs));
//		return ds_list_find_value(introCustomerMessage,randomDialog);
//	}
}

function Bob() {
	introMessage = ds_list_create();
	ds_list_add(introMessage, "Hello, can I get a " + string(CustomerList.currentDrink.RecipeName));
	ds_list_add(introMessage, "Hello, Imma get a " + string(CustomerList.currentDrink.RecipeName));
	//ds_list_add(introMessage, "Hello, can I get a " + drinkOrder);
	return new Customer(spr_customer1, introMessage);
}

function Alejandro() {
	introMessage = ds_list_create();
	ds_list_add(introMessage, "Hola, can I get a " + string(CustomerList.currentDrink.RecipeName));
	ds_list_add(introMessage, "Hola, can I get a " + string(CustomerList.currentDrink.RecipeName));
	return new Customer(spr_customer2, introMessage);
}

function Sally() {
	introMessage = ds_list_create();
	ds_list_add(introMessage, "HI, can I get a " + string(CustomerList.currentDrink.RecipeName));
	ds_list_add(introMessage, "HI, can I get a " + string(CustomerList.currentDrink.RecipeName));
	return new Customer(spr_customer3, introMessage);
}

function Michelle() {
	introMessage = ds_list_create();
	ds_list_add(introMessage, "Hey, can I get a " + string(CustomerList.currentDrink.RecipeName));
	ds_list_add(introMessage, "Hey, can I get a " + string(CustomerList.currentDrink.RecipeName));
	return new Customer(spr_customer4, introMessage);
}