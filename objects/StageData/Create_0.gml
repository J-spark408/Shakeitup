stage_list = ds_list_create();

ds_list_add(stage_list, new Stage(spr_stage_american, 0, true, Stage1()));
ds_list_add(stage_list, new Stage(spr_stage_asian, 1, false, Stage2()));
//ds_list_add(stage_list, new Stage(spr_test, 3, true))
//ds_list_add(stage_list, new Stage(spr_test, 4, false))
//ds_list_add(stage_list, new Stage(spr_test, 5, false))
ds_list_add(stage_list, new Stage(spr_comingSoon, 2, true, noone))

stage_size = ds_list_size(stage_list) - 1;

for (var numOfStages = 0; numOfStages < ds_list_size(stage_list) - 2; numOfStages++) {
		stageList = ds_list_find_value(stage_list,numOfStages);
		for (var numOfDrinks = 0; numOfDrinks < ds_list_size(stageList.stageDrinkList)-1; numOfDrinks++) {
			drinkList = ds_list_find_value(stageList.stageDrinkList, numOfDrinks);
			stage1 = array_create(ds_list_size(stageList.stageDrinkList),drinkList);
		}
}
//show_debug_message(stage_size);
//current_stage = 0;

//left_arrow_visible = false;
//right_arrow_visible = true;

