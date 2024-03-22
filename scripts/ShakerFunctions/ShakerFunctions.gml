
function RemoveShakerFullCap() {
	if (!instance_exists(obj_shaker_full_no_cap)) {
		instance_create_layer(1+obj_shaker_full.x + obj_shaker_full.sprite_width/4,288-74-72,"Instances",obj_shaker_cap);
		instance_create_layer(640, 288,"Instances",obj_shaker_full_no_cap);
		instance_destroy(obj_shaker_full);
	}
	RemoveCapAnimation()
}

function RemoveCapAnimation() {
	if (obj_shaker_cap.y > 100) {
		obj_shaker_cap.y--;
	} else if (obj_shaker_cap.x < 900) {
		obj_shaker_cap.x += 2;	
	} 
}

function MoveShakerAfterShaking(){
	if (instance_exists(obj_shaker_full)) {
		if (obj_shaker_full.y > 288) {
			obj_shaker_full.y -= 2;
		} else if (obj_shaker_full.y < 288) {
			obj_shaker_full.y += 2;
		} else {
			if (obj_shaker_full.image_angle > 0) {
				obj_shaker_full.image_angle--;
			} else if (obj_shaker_full.image_angle < 0) {
				obj_shaker_full.image_angle++;	
			} else {
				RemoveShakerFullCap();
			}
		} 
	}
	if (instance_exists(obj_shaker_cap) && (obj_shaker_cap.y > 100 || obj_shaker_cap.x < 900)) {
		RemoveCapAnimation();
	} else {
		if (instance_exists(obj_shaker_full_no_cap) && obj_shaker_full_no_cap.image_angle >= 120) {
			if (LiquidTracker.occurancePour != physics_particle_count()) {
				physics_particle_create(flags, 470,260,x-1,x,c_white,1,1);
			} else {
				objectCheckCreate = true;	
			}
		} else {
			if (instance_exists(obj_shaker_full_no_cap)) {
				obj_shaker_full_no_cap.image_angle += 2;
				if (obj_shaker_full_no_cap.x > 600) {
					obj_shaker_full_no_cap.x--;	
				}
			}
		}
	}
}

function AddShakerCap() {
	if (!instance_exists(obj_shaker_no_cap)) {
		DeleteObjsStateStirring();
		instance_create_layer(obj_shaker_bot_filled.x,obj_shaker_bot_filled.y - 300,"Instances",obj_shaker_no_cap);
	}
	AddCapAnimation();
}

function AddCapAnimation() {
	if (obj_shaker_no_cap.y < (416-obj_shaker_no_cap.sprite_height)) {
		obj_shaker_no_cap.y += 3;	
	} else {
		instance_create_layer(640, 416,"Instances",obj_shaker_full_no_cap);	
		instance_destroy(obj_shaker_no_cap);
		instance_destroy(obj_shaker_bot_filled);
	}
}

function MoveShakerAfterStirring() {
	if (!instance_exists(obj_shaker_full_no_cap)) {
		AddShakerCap();
	} else {
		if (obj_shaker_full_no_cap.y > 265) {
			obj_shaker_full_no_cap.y--;	
		} 
		if (obj_shaker_full_no_cap.x > 600) {
				obj_shaker_full_no_cap.x -= 0.25;	
		} else {
			if (obj_shaker_full_no_cap.image_angle >= 120) {
				obj_shaker_full_no_cap.image_angle += 0;
				if (LiquidTracker.occurancePour != physics_particle_count()) {
					physics_particle_create(flags, 470,260,x-1,x,c_white,1,1);
				} else {
					objectCheckCreate = true;	
				}
			} else {
				obj_shaker_full_no_cap.image_angle += 2;	
			}
		}
	}
}