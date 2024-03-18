// Key controls for bottle tilting 
function TiltBottleLeft() {
	if (is_grabbed && keyboard_check(ord("Q"))) {
		if (image_angle == -150) {
			image_angle -= 0;	
		} else {
			image_angle -= 3;	
		}
	}
	if (image_angle <= -105 && image_angle >= -150) {
		physics_particle_create(flags, x, y, x+1, x, c_white, 1, game_data._index);
		game_data.isPoured = true;
	} else if (!instance_exists(game_data._get_obj)) {
		image_angle = 0;
	}
}

function TiltBottleRight() {
	if (is_grabbed && keyboard_check(ord("E"))) {
		if (image_angle == 150) {
			image_angle += 0;	
		} else {
			image_angle += 3;	
		}
	}
	if (image_angle >= 105 && image_angle <= 150) {
		physics_particle_create(flags, x, y, 1-x, x, c_white, 1, game_data._index);
		game_data.isPoured = true;
	} else if (!instance_exists(game_data._get_obj)) {
		image_angle = 0;
	}
}

// When key B is pressed, go to bar selection room
function GoToBarSelection() {
	if (keyboard_check_pressed(ord("B")) && !instance_exists(obj_DialogLady) && !instance_exists(obj_DialogCustomer) && !instance_exists(obj_start_countdown)) {
		GetLiquidCounts();
		StageState = GAMESTATE.ChoosingIngredients;
	    room_goto(rm_bar_selection);
	}
}