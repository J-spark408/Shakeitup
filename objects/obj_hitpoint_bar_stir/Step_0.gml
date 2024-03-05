if (position_meeting(352,284,obj_hit_stir)) {
	timer_reset = true;
	full_rotated = false;
} else if (position_meeting(263,396,obj_hit_stir)) {
	timer_reset = true;
} else if (position_meeting(376,483,obj_hit_stir)) {
	timer = 2;
	full_rotated = true;
} else if (full_rotated && position_meeting(463,372,obj_hit_stir)) {
	timer = 2;
} 

timer -= delta_time/1000000;

if (timer < 1.99 && timer > 1.9) {
	stir_percentage = stir_percentage +  hit_stir_point;
} else if (timer < 0 && timer > -0.1) {
	stir_percentage = stir_percentage - hit_stir_point;
}

show_debug_message(timer);