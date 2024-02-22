stage_list = ds_list_create();

ds_list_add(stage_list, new Stage(spr_stage_american, true))
ds_list_add(stage_list, new Stage(spr_stage_asian, true))
ds_list_add(stage_list, new Stage(spr_stage_unlock, true))

stage_size = ds_list_size(stage_list) - 1;
//current_stage = 0;

//left_arrow_visible = false;
//right_arrow_visible = true;