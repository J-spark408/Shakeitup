// Pouring liquid when its tilted to required angle
// Liquid except bitters will pour automatically when its tilted, for bitters hit right mouse key to pour
function pourLiquid() {
	if (global.currentBottle == LIQUOR.BITTER) {
		if (mouse_check_button_pressed(mb_right)) {
			physics_particle_create(flags, x, y, x+1, x, c_white, 1, StageStateHandler._index);
		}
	} else {
		physics_particle_create(flags, x, y, x+1, x, c_white, 0.3, StageStateHandler._index);
	}
}

// If previously tilted and go in bottle selection room, set its angle back to 0 and set x and y to the same spot
function setPlaceBottle() {
	image_angle = 0;
	x = BottleHandler.x;
	y = BottleHandler.y;
}

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
		pourLiquid();
		LiquidTracker.isPoured = true;
	} else if (!instance_exists(StageStateHandler._get_obj)) {
		setPlaceBottle();
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
		pourLiquid();
		LiquidTracker.isPoured = true;
	} else if (!instance_exists(StageStateHandler._get_obj)) {
		setPlaceBottle();
	}
}

// When key B is pressed, go to bar selection room
function GoToBarSelection() {
	if (keyboard_check_pressed(ord("B")) && !instance_exists(DialogLady) && !instance_exists(DialogCustomers) && !instance_exists(obj_start_countdown)) {
		GetLiquidCounts();
		StageState = GAMESTATE.ChoosingIngredients;
	    room_goto(rm_bar_selection);
	}
}