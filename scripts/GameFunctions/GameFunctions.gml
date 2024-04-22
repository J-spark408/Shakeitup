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
	timerStart = false;

	BottleHandler.checkedBottle = false;
	BottleHandler.bottle_selected = noone;
	BottleHandler.image_angle = 0;
	LiquidTracker.currentPour = 0;
	LiquidTracker.prevPour = 0;
	LiquidTracker.occurancePour = 0;
	LiquidTracker.prevValue = 0;
	LiquidTracker.isPoured = false;
	if (instance_exists(RatingFunctions)) {
		RatingFunctions.correctMix = false;
		RatingFunctions.messageState = noone;
		RatingFunctions.rateScore = 10000;
		RatingFunctions.wrongLiquidPoured = false;
	}
}

// Timer is at 0 and round is over, delete all instances and set game start variables to default
function RoundOver() {
	randomize();
	physics_particle_delete_region_box(0,0,room_width,room_height);
	StageStateHandler.gameStart = false;
	StageStateHandler.timerStart = false;
	StageStateHandler.startGameTimer = 0;
	StageStateHandler.objectCheckCreate = false;
}

// Reset game functions after clicking reset or home button in pause menu button
function ResetGameForResetHomeMenu() {	
	StageStateHandler.StageState = GAMESTATE.Intro;
	if (StageStateHandler.StageState == GAMESTATE.Pause) {
		PauseBtn.gamePaused = false;	
	}
	DeleteAllForStageOver();
	RoundOver();
	instance_destroy(obj_round_countdown);
	ResetVariables();
	ResetPreviousPour();
	//DeletePauseMenu();
	DeletePopupMenu();
}


function checkStagePassed() {
	StageStateHandler.stagePassed = true;
	next = 1;
	if (StageStateHandler.stageScore >= 7) { // Score more than 10 points
		nextStage = (ds_list_find_value(StageData.stage_list,global.current_stage + next))
		nextStage.stage_unlocked = true;
		
		instance_create_layer(starEmpty1.x,starEmpty1.y,"PopUpMenu",starFill);
		instance_create_layer(starEmpty2.x,starEmpty2.y,"PopUpMenu",starFill);
		instance_create_layer(starEmpty3.x,starEmpty3.y,"PopUpMenu",starFill);
	} else if (StageStateHandler.stageScore >= 5 && StageStateHandler.stageScore < 7) { // Score range 5-9
		instance_create_layer(starEmpty1.x,starEmpty1.y,"PopUpMenu",starFill);
		instance_create_layer(starEmpty2.x,starEmpty2.y,"PopUpMenu",starFill);
	} else if (StageStateHandler.stageScore >= 1 && StageStateHandler.stageScore < 5) { // Score range 1-4
		instance_create_layer(starEmpty1.x,starEmpty1.y,"PopUpMenu",starFill);	
	}
}