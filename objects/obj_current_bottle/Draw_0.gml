if (game_data._picked == LIQUOR.VODKA) {
	//draw_sprite(spr_vodka, 0,x,y);
	instance_destroy(bottle);
	bottle = instance_create_layer(x,y,"Instances",obj_vodka);
	game_data._picked = -4;
}
else if (game_data._picked == LIQUOR.JAG) {
	instance_destroy(bottle);
	bottle = instance_create_layer(x,y,"Instances",obj_jag);
	game_data._picked = -4;
	}
else if (game_data._picked == LIQUOR.WHISKEY) {
	instance_destroy(bottle);
	bottle = instance_create_layer(x,y,"Instances",obj_whiskey);
	game_data._picked = -4;
} 	

