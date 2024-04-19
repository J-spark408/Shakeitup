
if (StageStateHandler.StageState = GAMESTATE.Shaking) {
	if (keyboard_check_pressed(vk_space) && !shaking_done) {
		CheckHitPoint();
		instance_create_layer(obj_hitpoint.x,obj_hitpoint.y,"PopUpMenu",obj_show_hit);
		if (obj_shaker_full.vertical_speed >= set_goal_shake) {
			shaking_done = true;
			obj_shaker_full.vertical_speed = 0;
			obj_shaker_full.rotate_speed = 0;
			instance_destroy(MixOptionBtn);
			StageStateHandler.StageState = GAMESTATE.ShowCasing;
			StageStateHandler.objectCheckCreate = false;
		}
	}
}