if (image_index >= 4) {
	image_speed = 0;
	if (!instance_exists(GarnishIce)) {
		instance_create_layer(ModeGarnish.x-446,ModeGarnish.y+26,"PopUpMenu",GarnishIce);
		instance_create_layer(ModeGarnish.x-75,ModeGarnish.y,"PopUpMenu",GarnishLemon);
		instance_create_layer(ModeGarnish.x+135,ModeGarnish.y-10,"PopUpMenu",GarnishLime);
		instance_create_layer(ModeGarnish.x+273,ModeGarnish.y,"PopUpMenu",GarnishOrange);
		instance_create_layer(ModeGarnish.x+430,ModeGarnish.y,"PopUpMenu",GarnishCherry);
		instance_create_layer(ModeGarnish.x+570,ModeGarnish.y,"PopUpMenu",GarnishOlive);
		instance_create_layer(ModeGarnish.x+683-37,ModeGarnish.y-189+35,"PopUpMenu",CloseBtn);
	}
}

if (instance_exists(ModeGarnish) && GarnishHandler.removeGarnish &&
(StageStateHandler.chosenGarnish != noone || instance_exists(IceScoop)) 
|| (mouse_check_button_pressed(mb_left) && position_meeting(mouse_x,mouse_y,CloseBtn))) {
	instance_destroy(ModeGarnish);	
	instance_destroy(GarnishIce);
	instance_destroy(GarnishLemon);
	instance_destroy(GarnishLime);
	instance_destroy(GarnishOrange);
	instance_destroy(GarnishCherry);
	instance_destroy(GarnishOlive);
	instance_destroy(CloseBtn);
	GarnishHandler.removeGarnish = false;
}