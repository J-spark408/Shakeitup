/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

randomize();

random_dialog = random_range(0,3);

if (!StageStateHandler.checkedAllCondition) {
	switch(int64(random_dialog)) {
		case 0:	
			dialog.add(spr_customer1, "I can use some Martini.");
			break;
		case 1:	
			dialog.add(spr_customer1, "Howdy, can I get an Martini");
			break;
		case 2:	
			dialog.add(spr_customer1, "I... I need some Martini!");
			break;
		case 3:	
			dialog.add(spr_customer1, "One Martini, please.");
			break;
	}
}

if (StageStateHandler.checkedAllCondition) {
	if (StageStateHandler.firstCondition && StageStateHandler.secondCondition) {
		dialog.add(spr_customer1, "Thank you, this martini is great");
		StageStateHandler.points += int64(random_range(6,11));
	} else if (StageStateHandler.firstCondition && !StageStateHandler.secondCondition) {
		dialog.add(spr_customer1, "Vermouth needs adjusting!");	
		StageStateHandler.points += int64(random_range(2,5));
	} else if (!StageStateHandler.firstCondition && StageStateHandler.secondCondition) {
		dialog.add(spr_customer1, "Vodka needs adjusting!");
		StageStateHandler.points += int64(random_range(2,5));
	} else {
		dialog.add(spr_customer1, "This martini is not good");	
		StageStateHandler.points += int64(random_range(0,1));
	}
}