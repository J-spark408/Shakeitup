if (!is_flipping) {
	image_speed = 0;	
}

if (image_index == 0 && is_flipping) {
	image_speed = 0;
	is_flipping = false;
}

if (current_page < ds_list_size(PageDetailList.RecipePage_list)-1 && keyboard_check_pressed(ord("E")) && !is_flipping) {
	is_flipping = true;
	image_speed = 1;
	current_page++;
}

if (current_page > 0 && keyboard_check_pressed(ord("Q")) && !is_flipping) {
	is_flipping = true;
	image_speed = -1;
	current_page--;
}

//448, 352 martini
