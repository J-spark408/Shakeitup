var TabGap = 20;
var TabDescriptionHeight = 60;
var TabButtonHeight = 75;
var TabDescriptionOriginX = 100;
var TabButtonOriginX = 50;

if (!instance_exists(StageTabDescriptionBox)) {
	instance_create_layer(room_width/2 - TabDescriptionOriginX - (TabGap*4),y + (TabDescriptionHeight/2),"Instances",StageTabDescriptionBox);
}

if (StageStateHandler.StageState == GAMESTATE.AddingIngredients) {
	var index = 0;
	var numOfTabs = 2;
	var tabArray = array_create(numOfTabs);
	if (index < 2) {
		for (var tabIndex = 1; tabIndex <= array_length(tabArray); tabIndex++) {
			array_push(tabArray,StageTabButtonBox)
			instance_create_layer(StageTabDescriptionBox.x + TabDescriptionOriginX + TabButtonOriginX + TabGap*numOfTabs, y + (TabButtonHeight/2),"Instances",tabArray[numOfTabs]);	
			index++;
		}
	}
	show_debug_message(index);
	show_debug_message(array_length(tabArray))
}

//if (!instance_exists(StageTabButtonBox)) {
//	instance_create_layer(StageTabDescriptionBox.x + TabDescriptionOriginX + TabButtonOriginX + TabGap, y + (TabButtonHeight/2),"Instances",StageTabButtonBox);	
//}
