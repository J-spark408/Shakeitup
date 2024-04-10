function CreateStageBackground() {
	backgroundSprite = noone;
	barTop = noone;
	misc = noone;

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
	if (physics_particle_count() > 0 && BottleHandler.bottle_selected != noone && LiquidTracker.isPoured) {
        if (LiquidTracker.prevPour == 0) {
            LiquidTracker.prevPour = physics_particle_count();
            ds_map_set(LiquidTracker.liquid_particles_map, BottleHandler.bottle_selected, LiquidTracker.prevPour)
			LiquidTracker.occurancePour += LiquidTracker.prevPour;
			//pour_count = physics_particle_count();
            LiquidTracker.isPoured = false;
        } else {
            LiquidTracker.currentPour = physics_particle_count() - LiquidTracker.occurancePour;
            LiquidTracker.prevValue = ds_map_find_value(LiquidTracker.liquid_particles_map,BottleHandler.bottle_selected);
            LiquidTracker.prevPour = LiquidTracker.currentPour;
			LiquidTracker.occurancePour += LiquidTracker.prevPour;	
            ds_map_set(LiquidTracker.liquid_particles_map, BottleHandler.bottle_selected, abs(LiquidTracker.prevPour) + LiquidTracker.prevValue);
			//pour_count = physics_particle_count();
            LiquidTracker.isPoured = false;
        }
    }
}

// For loop through the map and reset all values for new round/game.
function ResetPreviousPour() {
	for (numOfBottles = 0; numOfBottles < ds_map_size(LiquidTracker.liquid_particles_map); numOfBottles++) {
		ds_map_set(LiquidTracker.liquid_particles_map, numOfBottles, 0);
	}
}

// After making a drink, reset drink variables to default
function ResetVariables() {
	randomize();
	objectCheckCreate = false;
	global.currentBottle = noone;
	BottleHandler.bottleObj = noone;

	waitTimer = 0;
	timer = 0;

	firstCondition = false;
	secondCondition = false;
	checkedAllCondition = false;
	BottleHandler.checkedBottle = false;
	LiquidTracker.currentPour = 0;
	LiquidTracker.prevPour = 0;
	LiquidTracker.occurancePour = 0;
	LiquidTracker.prevValue = 0;
	LiquidTracker.isPoured = false;
	RatingFunctions.correctMix = false;
	RatingFunctions.messageState = noone;
	RatingFunctions.rateScore = 10000;
	RatingFunctions.wrongLiquidPoured = false;
}

// Timer is at 0 and round is over, delete all instances and set game start variables to default
function RoundOver() {
	physics_particle_delete_region_box(0,0,room_width,room_height);
	DeleteAllForStageOver();
	instance_destroy(CustomerList);
	gameStart = false;
	timerStart = false;
	startGameTimer = 0;
}

function checkStagePassed() {
	next = 1;
	if (stageScore >= 10) {
		nextStage = (ds_list_find_value(StageData.stage_list,global.current_stage + next))
		nextStage.stage_unlocked = true;
		
		instance_create_layer(starEmpty1.x,starEmpty1.y,"Instances",starFill);
		instance_create_layer(starEmpty2.x,starEmpty2.y,"Instances",starFill);
		instance_create_layer(starEmpty3.x,starEmpty3.y,"Instances",starFill);
	} else if (stageScore >= 5 && stageScore < 10) {
		instance_create_layer(starEmpty1.x,starEmpty1.y,"Instances",starFill);
		instance_create_layer(starEmpty2.x,starEmpty2.y,"Instances",starFill);
	} else {
		instance_create_layer(starEmpty1.x,starEmpty1.y,"Instances",starFill);	
	}
}