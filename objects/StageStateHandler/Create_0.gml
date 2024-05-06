StageState = GAMESTATE.Intro;
previousState = noone;
flags = phy_particle_flag_spring | phy_particle_flag_colormixing;
deleteParticles = physics_particle_delete_region_box(0,0,room_width,room_height);

physics_particle_set_radius(4.2);
physics_particle_set_density(1);
physics_particle_set_gravity_scale(12);

objectCheckCreate = false;
particleIndex = noone;

// Flags for starting the game and timers delay for certain state
gameStart = false;
timerStart = false;
startGameTimer = 0;
waitTimer = 0;
timer = 0;

// Get current Customer and Drink for dialog and objective
// Stage Score as set as tips for points
currentCustomer = noone;
currentDrink = noone;
drinkToMake = "";
stageScore = 0;
completionMessage = "";
// Get current garnish
chosenGarnish = noone;
serving = false;

// Get current options for game round
mixChoice = "";
currentDrinkGlass = noone;
currentDrinkColor = noone;

// Check if stage is passed
stagePassed = false;

// Variable to create background for each stage
backgroundSprite = noone;
barTop = noone;
misc = noone;
