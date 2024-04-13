if (StageStateHandler.StageState == GAMESTATE.AddingIngredients && !instance_exists(IceScoop)) {
	instance_create_layer(IceBucket.x,IceBucket.y,"Instances",IceScoop);
} else {
	instance_destroy(IceScoop);	
}