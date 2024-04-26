guideList = ds_list_create();

ds_list_add(guideList, spr_menu_guide);
ds_list_add(guideList, spr_menu_tip);
ds_list_add(guideList, spr_menu_control);

function deleteGuideMenu() {
	instance_destroy(ArrowLeft);
	instance_destroy(ArrowRight);
	instance_destroy(ConfirmBtn);
}