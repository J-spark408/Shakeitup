event_inherited();
if (!instance_exists(IceScoop)) {
	instance_create_layer(mouse_x,mouse_y,"PopUpMenu",IceScoop);	
} else {
	instance_destroy(IceScoop);	
}