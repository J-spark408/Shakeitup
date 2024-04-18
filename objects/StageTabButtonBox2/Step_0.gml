if (position_meeting(mouse_x, mouse_y,StageTabButtonBox2)) {
	if (image_index <= 5) {
		image_speed++;	
		
	} else {
		image_speed = 0;
		if (!instance_exists(TrashBin)) {
			instance_create_layer(ds_list_find_value(StageDisplayTab.tabList,1).x,ds_list_find_value(StageDisplayTab.tabList,1).y,"Instances",TrashBin);
		}
	}
} else {
	image_index = 0;	
	instance_destroy(TrashBin);
}

