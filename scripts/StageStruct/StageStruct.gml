// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function Stage(sSprite,sLevel,sBool,sDrink) constructor {
    stage_sprite = sSprite;
	stage_level = sLevel;
	stage_unlocked = sBool;
	stageDrinkList = sDrink;
	
	
}

function Stage1() {
	drinkList = ds_list_create();
	ds_list_add(drinkList, "Martini");
	ds_list_add(drinkList, "Old Fashioned");
	ds_list_add(drinkList, "Margarita");
	return drinkList;
}

function Stage2() {
	drinkList = ds_list_create();
	ds_list_add(drinkList, "Whiskey Sour");
	ds_list_add(drinkList, "Moscow Mule");
	ds_list_add(drinkList, "Paloma");
	return drinkList;
}