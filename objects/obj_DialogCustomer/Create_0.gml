/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

randomize();

random_dialog = random_range(0,3);
show_debug_message(int64(random_dialog))

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