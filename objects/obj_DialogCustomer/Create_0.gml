/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

randomize();

random_dialog = random_range(0,3);
show_debug_message(int64(random_dialog))

if (!game_data.checked_all_condition) {
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

if (game_data.checked_all_condition) {
	if (game_data.first_condition && game_data.second_condition) {
		dialog.add(spr_customer1, "Thank you, this martini is great");
		game_data.points += int64(random_range(6,11));
	} else if (game_data.first_condition && !game_data.second_condition) {
		dialog.add(spr_customer1, "Vermouth needs adjusting!");	
		game_data.points += int64(random_range(1,5));
	} else if (!game_data.first_condition && game_data.second_condition) {
		dialog.add(spr_customer1, "Vodka needs adjusting!");
		game_data.points += int64(random_range(1,5));
	} else {
		dialog.add(spr_customer1, "This martini is not good");	
		game_data.points += int64(random_range(0,1));
	}
}