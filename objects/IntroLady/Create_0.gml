/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

//dialog.add(spr_lady, "Welcome to Stage 1...");

//dialog.add(spr_lady, "In this bar, you will be making martini, old fashioned, and margarita.");

//dialog.add(spr_lady, "Good luck!");


for (var numOfStages = 0; numOfStages < ds_list_size(StageData.stage_list) - 1; numOfStages++) {
		stageList = ds_list_find_value(StageData.stage_list,numOfStages);
		drinks = [];
		for (var numOfDrinks = 0; numOfDrinks < ds_list_size(stageList.stageDrinkList); numOfDrinks++) {
			drinkList = ds_list_find_value(stageList.stageDrinkList, numOfDrinks);
			array_insert(drinks,numOfDrinks,drinkList);
		}
		if (global.current_stage == stageList.stage_level) {
			dialog.add(spr_lady, "Welcome to Stage " + string(numOfStages + 1) + ".");

			//dialog.add(spr_lady, "In this bar, you will be making " + string(ds_list_find_value(stageList.stageDrinkList,0)) + ", " + string(ds_list_find_value(stageList.stageDrinkList,1)) + ", and " + string(ds_list_find_value(stageList.stageDrinkList,2)));
			dialog.add(spr_lady, "In this bar, you will be making " + string(drinks[0]) + ", " + string(drinks[1]) + ", and " + string(drinks[2]));

			dialog.add(spr_lady, "Good luck!");
		}
}