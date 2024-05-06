if (StageStateHandler.StageState == GAMESTATE.AddGarnish && chooseGarnish) { 
	for (var garnishIndex = 0; garnishIndex < ds_map_size(garnishList); garnishIndex++) {
		if (StageStateHandler.chosenGarnish == garnishIndex) {
			var selectedGarnish = ds_map_find_value(garnishList,garnishIndex);
			garnishObj = selectedGarnish;	
		}
	}
	if (!instance_exists(garnishObj)) {
		instance_create_layer(room_width/2,y,"Instances",garnishObj);
	}
	//chooseGarnish = false;
}

if (instance_exists(garnishObj) && StageStateHandler.StageState == GAMESTATE.AddGarnish
&& !position_meeting(garnishObj.phy_position_x,garnishObj.phy_position_y,MartiniGlass)
&& !position_meeting(garnishObj.phy_position_x,garnishObj.phy_position_y,RockGlass)) {
	if ((keyboard_check_released(ord("A")) || keyboard_check_released(ord("D")))
	&& garnishObj.phy_position_x >= x && garnishObj.phy_position_x <= room_width) {
		garnishObj.phy_linear_velocity_x = 0;
	}
	if (keyboard_check(ord("A")) && garnishObj.phy_position_x >= x) {
		garnishObj.phy_position_x -= 2;	
		garnishObj.phy_linear_velocity_x -= 1.5;
	} 
	if (keyboard_check(ord("D")) && garnishObj.phy_position_x <= room_width) {
		garnishObj.phy_position_x += 2;	
		garnishObj.phy_linear_velocity_x += 1.5;
	} 
	if (keyboard_check(ord("S"))) {
		garnishObj.phy_speed_y = 3;	
	} else {
		garnishObj.phy_speed_y = 1;	
	}
} else {
	chooseGarnish = false;
}

