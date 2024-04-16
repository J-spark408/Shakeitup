// Pouring liquid when its tilted to required angle
// Liquid except bitters will pour automatically when its tilted, for bitters hit right mouse key to pour
function pourLeft() {
	if (global.currentBottle == LIQUOR.BITTER) {
		if (mouse_check_button_pressed(mb_right)) {
			physics_particle_create(StageStateHandler.flags, x, y, 1-x, x, c_white, 1, StageStateHandler.particleIndex);
		}
	} else {
		physics_particle_create(StageStateHandler.flags, x, y, 1-x, x, c_white, 0.3, StageStateHandler.particleIndex);
	}
}

function pourRight() {
	if (global.currentBottle == LIQUOR.BITTER) {
		if (mouse_check_button_pressed(mb_right)) {
			physics_particle_create(StageStateHandler.flags, x, y, x+1, x, c_white, 1, StageStateHandler.particleIndex);
		}
	} else {
		physics_particle_create(StageStateHandler.flags, x, y, x+1, x, c_white, 0.3, StageStateHandler.particleIndex);
	}
}

// Key controls for bottleObj tilting 
function TiltBottleLeft() {
	if (is_grabbed && keyboard_check(ord("Q"))) {
		if (image_angle == -165) {
			image_angle -= 0;	
		} else {
			image_angle -= 3;
		}
	}
	if (image_angle <= -105 && image_angle >= -165) {
		pourRight();
		LiquidTracker.isPoured = true;
	} 
}

function TiltBottleRight() {
	if (is_grabbed && keyboard_check(ord("E"))) {
		if (image_angle == 165) {
			image_angle += 0;	
		} else {
			image_angle += 3;	
		}
	}
	if (image_angle >= 105 && image_angle <= 165) {
		pourLeft();
		LiquidTracker.isPoured = true;
	} 
}

// When key B is pressed, go to bar selection room
function GoToBarSelection() {
	if (keyboard_check_pressed(ord("B")) && !instance_exists(IntroLady) && !instance_exists(CustomerList) && !instance_exists(obj_start_countdown)) {
		if (BottleHandler.image_angle <= 30 && BottleHandler.image_angle >= -30) {
		GetLiquidCounts();
		BottleHandler.checkedBottle = true;
		StageState = GAMESTATE.ChoosingIngredients;
		obj_shaker_bot.createdPhysics = false;
		room_goto(rm_bar_selection); 
			if (BottleHandler.bottleObj != noone) {
				instance_destroy(BottleHandler.bottleObj);
				// set bottle angle back to 0
				BottleHandler.image_angle = 0;	
			}
		} else {
			instance_create_layer(BottleHandler.bottleObj.x,BottleHandler.bottleObj.y,"Instances",placeBottleText);
		}
	}
}
