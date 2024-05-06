if (!instance_exists(IceScoop) && !position_meeting(mouse_x,mouse_y,GarnishIce)) {
	GarnishHandler.chooseGarnish = true;
}
if (instance_exists(IceScoop) && !position_meeting(mouse_x,mouse_y,GarnishIce)) {
	GarnishHandler.removeGarnish = false;
} else if (!instance_exists(IceScoop)) {
	GarnishHandler.removeGarnish = true;
}