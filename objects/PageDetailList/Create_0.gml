RecipePage_list = ds_list_create();

for (var stageIndex = 0; stageIndex < StageData.stage_size; stageIndex++) {
	getStage = ds_list_find_value(StageData.stage_list, stageIndex);
	if (getStage.stage_unlocked == true) {
		if (getStage.stage_level == 0) {
			ds_list_add(RecipePage_list, new RecipePage(spr_vodka_martini,
			"Martini",
			"Add Ice into the Shaker\n1) 3oz Vodka\n2) 0.5oz Dry Vermouth\n3) Shaken\n5) Serve ")); 

			ds_list_add(RecipePage_list, new RecipePage(spr_old_fashioned,
			"Old Fashioned",
			"Add Ice into the Shaker\n1) 2oz Bourbon\n2) 0.25oz Simple Syrup\n3) 2 Dash Bitters\n5) Stirred\n6) Serve"));

			ds_list_add(RecipePage_list, new RecipePage(spr_margarita,
			"Margarita",
			"Add Ice into the Shaker\n1) 2oz Tequila\n2) 0.5oz Orange Liqueur\n3) 0.5oz Simple Syrup\n4) 0.75oz Lime Juice\n5) Shaken\n6) Serve"));
		} else if (getStage.stage_level == 1) {
			ds_list_add(RecipePage_list, new RecipePage(spr_whiskey_sour,
			"Whiskey Sour",
			"Add Ice into the Shaker\n1) 2oz Bourbon\n2) 0.75oz Lemon Juice\n3) 0.75 oz Simple Syrup \n4) Shaken\n5) Serve ")); 

			ds_list_add(RecipePage_list, new RecipePage(spr_moscow_mule,
			"Moscow Mule",
			"Add Ice into the Shaker\n1) 2oz Vodka\n2) 0.5oz Lime Juice\n3) 3oz Ginger Beer \n4) Ice cubes\n5) Shaken\n6) Serve"));

			ds_list_add(RecipePage_list, new RecipePage(spr_gimlet,
			"Gimlet",
			"Add Ice into the Shaker\n1) 2oz Gin\n2) 0.75oz Simple syrup\n3) 0.75oz Lime Juice\n4) Shaken\n5) Serve"));	
		}
	}
}