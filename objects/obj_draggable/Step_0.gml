if (mouse_check_button(mb_left)) {
	grab = true;
	depth = -1;
	
	xx = x - mouse_x;
	yy = y - mouse_y;
}

if (mouse_check_button_released(mb_left)) {
	grab = false;
	depth = 0;
}

if (grab == false) {
	exit;	
}
else 
{
	x = mouse_x + xx;
	y = mouse_y + yy;
}