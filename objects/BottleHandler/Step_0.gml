if (game_data.StageState == STATES.AddingIngredients) {
	TiltBottleLeft();
	TiltBottleRight();
	if (mouse_check_button(mb_left) && position_meeting(mouse_x,mouse_y,game_data._get_obj)) {
		is_grabbed = true;
	}
	if (mouse_check_button_released(mb_left)) {
		is_grabbed = false;	
	}
	if (is_grabbed) {
		x = mouse_x;
		y = mouse_y;
	}
}

//if (game_data.StageState = STATES.ChoosingIngredients) {
//	if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,game_data._get_obj)) {
//		image_alpha = 1;
//	}
//}

//if (game_data.StageState == STATES.AddingIngredients) {
//	for (var i = 0; i < array_length(liquors); i++) {
//	    if (global.currentBottle == liquors[i] && !bottleChoosen) {
			
//	        instance_destroy(bottle);
//	        bottle = instance_create_layer(x,y,"Instances",game_data._get_obj);
//	        bottle_selected = liquors[i];
//	        bottleChoosen = true;
//	    }
//	}
//}
if (room == rm_game && bottle == noone) {
	createNewBottle();	
	show_debug_message("bottle")
	show_debug_message(bottle);
}

if (game_data.StageState == STATES.ChoosingIngredients) {
	instance_destroy(bottle);
	bottle = noone;
	bottleChoosen = false;
}