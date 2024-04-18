var TabGap = 20;
var TabDescriptionHeight = 60;
var TabButtonHeight = 75;
var TabDescriptionOriginX = 100;
var TabButtonOriginX = 50;

draw_set_font(fnt_menu);
draw_set_color(c_white);
draw_set_halign(fa_right);
draw_set_valign(fa_top);
	

if (!instance_exists(StageTabDescriptionBox)) {
	instance_create_layer(x + TabDescriptionOriginX,y + (TabDescriptionHeight/2),"Instances",StageTabDescriptionBox);
}
draw_text(StageTabDescriptionBox.x,StageTabDescriptionBox.y + TabButtonHeight/2, "Tips $" + string(StageStateHandler.stageScore));
	

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
