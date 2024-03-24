/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();
randomize();
currentCustomer = StageStateHandler.random_customer;
getCustomer = ds_map_find_value(CustomerList.customers,int64(currentCustomer));

chooseDialog = random_range(0,ds_map_size(DialogList.dialogs));
getDialog = ds_map_find_value(DialogList.dialogs,int64(chooseDialog));


if (!StageStateHandler.checkedAllCondition && instance_exists(DialogCustomers)) {
	dialog.add(getCustomer, getDialog);
}


if (StageStateHandler.checkedAllCondition) {
	if (StageStateHandler.firstCondition && StageStateHandler.secondCondition) {
		dialog.add(getCustomer, "Thank you, this martini is great");
		StageStateHandler.points += int64(random_range(6,11));
	} else if (StageStateHandler.firstCondition && !StageStateHandler.secondCondition) {
		dialog.add(getCustomer, "Vermouth needs adjusting!");	
		StageStateHandler.points += int64(random_range(2,5));
	} else if (!StageStateHandler.firstCondition && StageStateHandler.secondCondition) {
		dialog.add(getCustomer, "Vodka needs adjusting!");
		StageStateHandler.points += int64(random_range(2,5));
	} else {
		dialog.add(getCustomer, "This martini is not good");	
		StageStateHandler.points += int64(random_range(0,1));
	}
}