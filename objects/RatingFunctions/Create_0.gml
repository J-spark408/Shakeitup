messageState = noone;
correctMix = false;
wrongLiquidPoured = false;
rateScore = 10000;

function getRateState() {
	ds_list_sort(RecipeChecker.getRating,false)
	if (ds_list_find_value(RecipeChecker.getRating,0) == RATE.RIGHTMIX) {
		correctMix = true;
	} else {
		correctMix = false;
	}
	for (numOfRates = 1; numOfRates < ds_list_size(RecipeChecker.getRating); numOfRates++) {
		show_debug_message(ds_list_find_value(RecipeChecker.getRating,numOfRates))
		if (correctMix) {
			gradeRatingSwitchCase();
		}
		//} else {
		//	flip *= -1;
		//	gradeRatingSwitchCase();
		//}
	}
	if (!wrongLiquidPoured) {
		setRateState();
	} else {
		messageState = MESSAGE.WRONGDRINK;
	}
	
	return messageState;
	//show_debug_message(ds_list_find_value(RecipeChecker.getRating,0));
	//for (var numOfRates = 0; numOfRates < ds_list_size(RecipeChecker.getRating); numOfRates++) {
	//	show_debug_message(ds_list_find_value(RecipeChecker.getRating,numOfRates));
	//}
	
}

function gradeRatingSwitchCase() {
	switch(ds_list_find_value(RecipeChecker.getRating,numOfRates)) {
		case RATE.GREAT:
			rateScore -= 0;
			break;
		case RATE.GOOD:
			rateScore -= 10;
			break;
		case RATE.BAD:
			rateScore -= 100;
			break;
		case RATE.TOOMUCH:
			rateScore -= 1000;
			break;
		case RATE.TERRIBLE:
			rateScore -= 5000;
			break;
		case RATE.MISSING:
			wrongLiquidPoured = true;
			break;
		case RATE.WRONGLIQUID:
			wrongLiquidPoured = true;
			break;
	}
}

function setRateState() {
	if (rateScore >= (10000-10)) {
		messageState = MESSAGE.PERFECT;
		StageStateHandler.stageScore += irandom_range(6,9);
	} else if (rateScore >= (10000-40) && rateScore <= (10000-20)) {
		messageState = MESSAGE.GOOD;
		StageStateHandler.stageScore += irandom_range(4,5);
	} else if (rateScore >= (10000-140) && rateScore < (10000-40)) {
		messageState = MESSAGE.DECENT;
		StageStateHandler.stageScore += irandom_range(1,3);
	} else if (rateScore >= (10000 - 2000) && rateScore < (10000-140)) {
		messageState = MESSAGE.NOTGOOD;
		StageStateHandler.stageScore += irandom(1);
	} else if (rateScore >= (10000 - 4000) && rateScore < (10000 - 2000)) {
		messageState = MESSAGE.TOOSTRONG;
		StageStateHandler.stageScore += irandom(1);
	} else if (rateScore > -9999 && rateScore < (10000 - 4000)) {
		messageState = MESSAGE.WRONGDRINK;
	}
}

