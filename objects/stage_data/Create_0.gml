stage_list = ds_list_create();

ds_list_add(stage_list, new Stage(spr_stage_american, 0, true))
ds_list_add(stage_list, new Stage(spr_stage_asian, 1, true))
//ds_list_add(stage_list, new Stage(spr_test, 2, true))
//ds_list_add(stage_list, new Stage(spr_test, 3, true))
//ds_list_add(stage_list, new Stage(spr_test, 4, false))
//ds_list_add(stage_list, new Stage(spr_test, 5, false))
ds_list_add(stage_list, new Stage(spr_stage_unlock, 3, true))

stage_size = ds_list_size(stage_list) - 1;


//show_debug_message(stage_size);
//current_stage = 0;

//left_arrow_visible = false;
//right_arrow_visible = true;