x += horizontal_speed * dir;
y -= vertical_speed * dir;
if (y <= position_to_y){ //&& y >= position_to_y) {
		dir *= 0;
	}