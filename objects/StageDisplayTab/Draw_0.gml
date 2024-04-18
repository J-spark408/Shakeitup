var TabGap = 20;
var TabDescriptionHeight = 60;
var TabButtonHeight = 75;
var TabDescriptionOriginX = 100;
var TabButtonOriginX = 50;

if (!instance_exists(StageTabDescriptionBox)) {
	instance_create_layer(room_width/2 - TabDescriptionOriginX - (TabGap*4),y + (TabDescriptionHeight/2),"Instances",StageTabDescriptionBox);
}

if (StageStateHandler.StageState == GAMESTATE.AddingIngredients && !tabsCreated) {
	var numOfTabs = 2;
	for (var tabIndex = 0; tabIndex < numOfTabs; tabIndex++) {
		instance_create_layer(StageTabDescriptionBox.x + TabDescriptionOriginX*(tabIndex+1) + TabButtonOriginX + TabGap*(tabIndex+1), y + (TabButtonHeight/2),"Instances",ds_list_find_value(tabList,tabIndex));
	}
	tabsCreated = true;
	
}

//if (!instance_exists(StageTabButtonBox)) {
//	instance_create_layer(StageTabDescriptionBox.x + TabDescriptionOriginX + TabButtonOriginX + TabGap, y + (TabButtonHeight/2),"Instances",StageTabButtonBox);	
//}
