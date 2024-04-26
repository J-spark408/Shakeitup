//messageState = noone;
//correctMix = false;
//wrongLiquidPoured = false;
//rateScore = 10000;

//function getRateState() {
//	ds_list_sort(RecipeChecker.getRating,false)
//	if (ds_list_find_value(RecipeChecker.getRating,0) == RATE.RIGHTMIX) {
//		correctMix = true;
//	} else {
//		correctMix = false;
//	}
//	for (var numOfRates = 1; numOfRates < ds_list_size(RecipeChecker.getRating); numOfRates++) {
//		show_debug_message("How many rating")
//		show_debug_message(ds_list_size(RecipeChecker.getRating));
//		show_debug_message(ds_list_find_value(RecipeChecker.getRating,numOfRates))
//		if (correctMix) {
//			gradeRatingSwitchCase(numOfRates);
//		}
//		//} else {
//		//	flip *= -1;
//		//	gradeRatingSwitchCase();
//		//}
//	}
//	if (!wrongLiquidPoured) {
//		setRateState();
//	} else {
//		messageState = MESSAGE.WRONGDRINK;
//	}
	
//	return messageState;
//	show_debug_message(ds_list_find_value(RecipeChecker.getRating,0));
//	for (var numOfRates = 0; numOfRates < ds_list_size(RecipeChecker.getRating); numOfRates++) {
//		show_debug_message(ds_list_find_value(RecipeChecker.getRating,numOfRates));
//	}
	
//}

//function gradeRatingSwitchCase(rates) {
//	switch(ds_list_find_value(RecipeChecker.getRating,rates)) {
//		case RATE.GREAT:
//			rateScore -= 0;
//			break;
//		case RATE.GOOD:
//			rateScore -= 10;
//			break;
//		case RATE.BAD:
//			rateScore -= 100;
//			break;
//		case RATE.TOOMUCH:
//			rateScore -= 1000;
//			break;
//		case RATE.TERRIBLE:
//			rateScore -= 5000;
//			break;
//		case RATE.MISSING:
//			wrongLiquidPoured = true;
//			break;
//		case RATE.WRONGLIQUID:
//			wrongLiquidPoured = true;
//			break;
//	}
//}

//function setRateState() {
//	if (rateScore >= (10000-10)) {
//		messageState = MESSAGE.PERFECT;
//		StageStateHandler.stageScore += irandom_range(6,9);
//	} else if (rateScore >= (10000-40) && rateScore <= (10000-20)) {
//		messageState = MESSAGE.GOOD;
//		StageStateHandler.stageScore += irandom_range(4,5);
//	} else if (rateScore >= (10000-140) && rateScore < (10000-40)) {
//		messageState = MESSAGE.DECENT;
//		StageStateHandler.stageScore += irandom_range(1,3);
//	} else if (rateScore >= (10000 - 2000) && rateScore < (10000-140)) {
//		messageState = MESSAGE.NOTGOOD;
//		StageStateHandler.stageScore += irandom(1);
//	} else if (rateScore >= (10000 - 4000) && rateScore < (10000 - 2000)) {
//		messageState = MESSAGE.TOOSTRONG;
//		StageStateHandler.stageScore += irandom(1);
//	} else if (rateScore > -9999 && rateScore < (10000 - 4000)) {
//		messageState = MESSAGE.WRONGDRINK;
//	}
//}

/////////////////////////////////////////////////

messageState = noone;
errorState = noone;
getScore = 0;

function getRateState() {
	scoreTotal = 100 * (ds_map_size(RecipeChecker.recipeToRate.IngredientsMap));
	// sort smallest index to largest since last two index are to indicate mix options
	ds_list_sort(RecipeChecker.getRating,true) 
	for (var numOfRates = 0; numOfRates < ds_list_size(RecipeChecker.getRating); numOfRates++) {
		gradeRatingSwitchCase(numOfRates);
	}
	scoreToCompare = getScore/scoreTotal;
	show_debug_message("scoreToCompare");	
	show_debug_message(scoreToCompare);
	show_debug_message("getScore");
	show_debug_message(getScore);
	show_debug_message("scoreTotal");
	show_debug_message(scoreTotal);
	setRateState();
	return messageState;
	//show_debug_message(ds_list_find_value(RecipeChecker.getRating,0));
	//for (var numOfRates = 0; numOfRates < ds_list_size(RecipeChecker.getRating); numOfRates++) {
	//	show_debug_message(ds_list_find_value(RecipeChecker.getRating,numOfRates));
	//}
}

function gradeRatingSwitchCase(rates) {
	switch(ds_list_find_value(RecipeChecker.getRating,rates)) {
		case RATE.GREAT:
			getScore += 100;
			break;
		case RATE.GOOD:
			getScore += 90;
			break;
		case RATE.BAD:
			getScore += 70;
			break;
		case RATE.TERRIBLE:
			getScore += 50;
			break;
		case RATE.FAIL:
			getScore += 20;
			break;
	}
}

function setRateState() {
	if (scoreToCompare > 0.9) {
		messageState = MESSAGE.PERFECT;
		StageStateHandler.stageScore += irandom_range(7,9);
	} else if (scoreToCompare <= 0.9 && scoreToCompare > 0.8) {
		messageState = MESSAGE.GOOD;
		StageStateHandler.stageScore += irandom_range(4,5);
	} else if (scoreToCompare <= 0.8 && scoreToCompare > 0.7) {
		messageState = MESSAGE.DECENT;
		StageStateHandler.stageScore += irandom_range(1,3);
	} else if (scoreToCompare <= 0.7 && scoreToCompare > 0.5) {
		messageState = MESSAGE.NOTGOOD;
		StageStateHandler.stageScore += irandom_range(1,2);
	} else if (scoreToCompare <= 0.5 && scoreToCompare > 0.2) {
		messageState = MESSAGE.TERRIBLE;
	} else if (scoreToCompare <= 0.2 && scoreToCompare >= 0) {
		messageState = MESSAGE.FAIL;	
	}
}

function getErrorState() {
	ds_list_sort(RecipeChecker.getError,false) 
	for (var numOfErrors = 0; numOfErrors < ds_list_size(RecipeChecker.getError); numOfErrors++) {
		checkErrorState(numOfErrors);
	}
	return errorState;
}

function checkErrorState(errors) {
	checkRecipeError = ds_list_find_value(RecipeChecker.getError,errors);
	if (checkRecipeError == ERROR.WRONGMIX) {
		if (messageState == MESSAGE.PERFECT) {
			errorState = MESSAGE.GREATBUTWRONGMIX;
			StageStateHandler.stageScore -= irandom_range(0,1);
		} else if (messageState == MESSAGE.GOOD) {
			errorState = MESSAGE.WRONGMIX;
			StageStateHandler.stageScore -= irandom_range(1,2);
		} else {
			if (StageStateHandler.stageScore > 0) {
				StageStateHandler.stageScore -= irandom_range(2,3);
			}
		}
	} else if (checkRecipeError == ERROR.WRONGLIQUID) {
		errorState = MESSAGE.WRONGDRINK;
		if (StageStateHandler.stageScore > 0) {
			StageStateHandler.stageScore -= irandom_range(3,4);
		}
	} else if (checkRecipeError == ERROR.MISSING) {
		errorState = MESSAGE.MISSING;	
		if (StageStateHandler.stageScore > 0) {
			StageStateHandler.stageScore -= irandom_range(3,4);
		}
	} else if (checkRecipeError == ERROR.TOOMUCH) {
		errorState = MESSAGE.TOOSTRONG;	
		if (StageStateHandler.stageScore > 0) {
			StageStateHandler.stageScore -= irandom_range(1,2);
		}
	}
}
