if (global.currentState == MENUSTATE.GUIDE) {
	if (!global.createBeginnerGuide) {
		global.menuOpened = true;
		global.createBeginnerGuide = true;
	}

	if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,ArrowLeft)) {
		global.guidePage--;
	}
	if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,ArrowRight)) {
		global.guidePage++;
	}
	if (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,ConfirmBtn)) {
		deleteGuideMenu();
		global.currentState = MENUSTATE.STAGE;
		global.menuOpened = false;
	}
}