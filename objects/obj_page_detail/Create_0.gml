//recipe = new Recipe(); 

//recipe.recipe_name = "Martini";
//recipe.recipe_sprite = spr_martini_img;
//recipe.recipe_detail = "1.\n2.\n3.";

//recipe_list = ds_list_create()
//ds_list_add(recipe_list, recipe)

//recipe2 = new Recipe(); 

//recipe2.recipe_name = "Martini";
//recipe2.recipe_sprite = spr_martini_img;
//recipe2.recipe_detail = "1.\n2.\n3.";

recipe_list = ds_list_create()

ds_list_add(recipe_list, new Recipe(spr_martini_img,"Martini","1. 3oz Vodka\n2. 1oz Dry Vermouth\n3. 1 Cup Ice in shaker\n4. Shake\n5. Serve ")); 
ds_list_add(recipe_list, new Recipe(spr_old_fashioned,"Old Fashioned","1. 2oz Bourbon\n2. 0.25oz Bar Syrup\n3. 2 Dash Bitters\n4. Ice cubes\n5. Stir\n6. Serve"))