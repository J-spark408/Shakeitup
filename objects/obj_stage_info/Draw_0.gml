
if (0 < stage_availble) {
	stage = ds_list_find_value(stage_data.stage_list,current_stage);
	draw_sprite(stage.stage_sprite, 0, 683, 389)
}
if (current_stage == 0 && left_arrow_visible) {
	instance_destroy(obj_select_left);
	left_arrow_visible = false;
} 
else if (current_stage != 0 && !left_arrow_visible) {
	instance_create_layer(282, 373, "Instances", obj_select_left);		 
	left_arrow_visible = true;
}
if (current_stage == stage_data.stage_size && right_arrow_visible) {
	instance_destroy(obj_select_right);
	right_arrow_visible = false;
}
else if (current_stage != stage_data.stage_size && !right_arrow_visible){
	instance_create_layer(1088, 373, "Instances", obj_select_right);
	right_arrow_visible = true;
}