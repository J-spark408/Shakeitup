if (position_meeting(mouse_x, mouse_y,StageTabButtonBox1)) {
	if (image_index <= 5) {
		image_speed++;	
	} else {
		image_speed = 0;
		if (!instance_exists(IceBucket)) {
			instance_create_layer(ds_list_find_value(StageDisplayTab.tabList,0).x,ds_list_find_value(StageDisplayTab.tabList,0).y,"Instances",IceBucket);		
		}
	}
} else {
	image_index = 0;	
	instance_destroy(IceBucket);
}
