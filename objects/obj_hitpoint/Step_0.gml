y += vertical_speed * dir;

if (y < position_from_y || y > position_to_y) {
	dir *= -1;	
}

