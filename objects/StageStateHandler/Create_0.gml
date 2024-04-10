StageState = GAMESTATE.Intro;
flags = phy_particle_flag_spring | phy_particle_flag_colormixing;
deleteParticles = physics_particle_delete_region_box(0,0,room_width,room_height);

physics_particle_set_radius(4);
physics_particle_set_density(0.5);
physics_particle_set_gravity_scale(10);

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
stageScore = 0;

// 
mixChoice = "";
currentDrinkGlass = noone;
currentDrinkColor = noone;

// Variable to create background for each stage
backgroundSprite = noone;
barTop = noone;
misc = noone;
