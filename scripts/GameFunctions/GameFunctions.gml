function CreateStageBackground() {
	layer_sprite_destroy(backgroundSprite)
	layer_sprite_destroy(misc);
	layer_sprite_destroy(barTop);	
	switch(global.current_stage) {
		case 0:
		barTop = layer_sprite_create("Assets",0,621,spr_bartop);
		misc = layer_sprite_create("Assets",950,47,spr_neonlight);
		backgroundSprite = layer_sprite_create("Assets",x,y,spr_barbackground);	
		break;
		case 1:
		show_debug_message("Stage 2")
		barTop = layer_sprite_create("Assets",0,621,spr_bartop);
		backgroundSprite = layer_sprite_create("Assets",x,y,spr_asian);
		misc = noone;
		break;
		case 2:
		layer_sprite_create("Assets",0,621,spr_bartop);
		case 3:
		layer_sprite_create("Assets",0,621,spr_bartop);
		case 4:
		layer_sprite_create("Assets",0,621,spr_bartop);
		default:
		break;
	}	
}

// Updates the particle count into map everytime pour has been made into the shaker
function GetLiquidCounts(){
	if (physics_particle_count() > 0 && BottleHandler.bottle_selected != noone && isPoured) {
        if (prevPour == 0) {
            prevPour = physics_particle_count();
            ds_map_set(liquid_particles_map, BottleHandler.bottle_selected, prevPour)
			occurancePour += prevPour;
			//pour_count = physics_particle_count();
            isPoured = false;
        } else {
            currentPour = physics_particle_count() - occurancePour;
            prevValue = ds_map_find_value(liquid_particles_map,BottleHandler.bottle_selected);
            prevPour = currentPour;
			occurancePour += prevPour;	
            ds_map_set(liquid_particles_map, BottleHandler.bottle_selected, abs(prevPour) + prevValue);
			//pour_count = physics_particle_count();
            isPoured = false;
        }
    }
}

// For loop through the map and reset all values for new round/game.
function ResetPreviousPour() {
	for (numOfBottles = 0; numOfBottles < ds_map_size(liquid_particles_map); numOfBottles++) {
		ds_map_set(liquid_particles_map, numOfBottles, 0);
	}
}

// After making a drink, reset drink variables to default
function ResetVariables() {
	objectCheckCreate = false;
	global.currentBottle = noone;
	_get_obj = noone;

	waitTimer = 0;
	timer = 0;

	firstCondition = false;
	secondCondition = false;
	checkedAllCondition = false;

	currentPour = 0;
	prevPour = 0;
	occurancePour = 0;
	prevValue = 0;
	isPoured = false;
}

// Timer is at 0 and round is over, delete all instances and set game start variables to default
function RoundOver() {
	physics_particle_delete_region_box(0,0,room_width,room_height);
	DeleteAllForStageOver();
	instance_destroy(obj_DialogCustomer);
	gameStart = false;
	timerStart = false;
	startGameTimer = 0;
}