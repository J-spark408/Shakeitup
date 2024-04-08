is_shaking = false;
//shake_speed = 0;
check_hitpoint = 0;
miss_count = 0;
shaking_done = false;
set_goal_shake = random_range(30,45);

function CheckHitPoint() {
	if (position_meeting(x + 22, y + 13, obj_hitpoint) ||
		position_meeting(x + 22, y + 298, obj_hitpoint)) {
		//is_shaking = true;
		obj_shaker_full.vertical_speed += 4;
		obj_shaker_full.rotate_speed = 1;
		check_hitpoint = 0;
	} else if (position_meeting(x + 22, y + 31, obj_hitpoint) ||
		position_meeting(x + 22, y + 280, obj_hitpoint)) {
		//is_shaking = true;
		obj_shaker_full.vertical_speed += 2;
		obj_shaker_full.rotate_speed = 1;
		check_hitpoint = 1;
	} else {
		check_hitpoint = 2;
		miss_count++;
		if (obj_shaker_full.vertical_speed > 0) {
			obj_shaker_full.vertical_speed -= 2;
		}
		if (obj_shaker_full.vertical_speed == 0) {
			obj_shaker_full.rotate_speed = 0;
			//is_shaking = false;
		}
	}
}

//function HitOnYellow() {
//	if (position_meeting(x + 22, y + 31, obj_hitpoint) ||
//		position_meeting(x + 22, y + 280, obj_hitpoint)) {
//		//is_shaking = true;
//		obj_shaker_full.vertical_speed += 1;
//		obj_shaker_full.rotate_speed = 1;
//		check_hitpoint = 1;
//	}
//}

//function HitOnMiss() {
//	if (obj_shaker_full.vertical_speed > 0) {
//		obj_shaker_full.vertical_speed--;
//		check_hitpoint = 2;
//		miss_count++;
//		if (obj_shaker_full.vertical_speed == 0) {
//			obj_shaker_full.rotate_speed = 0;
//			//is_shaking = false;
//		}
//	}
//}