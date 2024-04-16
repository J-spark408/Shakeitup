stage_list = ds_list_create();

ds_list_add(stage_list, new Stage(spr_stage_american, 0, true, Stage1()));
ds_list_add(stage_list, new Stage(spr_stage_asian, 1, false, Stage2()));
//ds_list_add(stage_list, new Stage(spr_test, 3, true))
//ds_list_add(stage_list, new Stage(spr_test, 4, false))
//ds_list_add(stage_list, new Stage(spr_test, 5, false))
ds_list_add(stage_list, new Stage(spr_comingSoon, 2, true, noone))

stage_size = ds_list_size(stage_list) - 1;

