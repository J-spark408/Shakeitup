if (image_index >= 4) {
	image_speed = 0;
	if (!instance_exists(GarnishIce)) {
		instance_create_layer(ModeGarnish.x-446,ModeGarnish.y+26,"PopUpMenu",GarnishIce)
		instance_create_layer(ModeGarnish.x-85,ModeGarnish.y,"PopUpMenu",GarnishLemon)
		instance_create_layer(ModeGarnish.x+135,ModeGarnish.y-10,"PopUpMenu",GarnishLime)
		instance_create_layer(ModeGarnish.x+270,ModeGarnish.y,"PopUpMenu",GarnishOrange)
		instance_create_layer(ModeGarnish.x+430,ModeGarnish.y,"PopUpMenu",GarnishCherry)
		instance_create_layer(ModeGarnish.x+570,ModeGarnish.y,"PopUpMenu",GarnishOlive)	
	}
}