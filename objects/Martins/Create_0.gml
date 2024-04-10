leftside = physics_fixture_create();
physics_fixture_set_polygon_shape(leftside);
physics_fixture_add_point(leftside,148.98,135.7);
physics_fixture_add_point(leftside,134.39,137.95);
physics_fixture_add_point(leftside,4.77,0.69);
physics_fixture_add_point(leftside,15.63,-0.37);
physics_fixture_set_collision_group(leftside, 1);
physics_fixture_set_density(leftside,0)
physics_fixture_set_awake(leftside,1)
physics_fixture_bind(leftside, id)

rightside = physics_fixture_create();
physics_fixture_set_polygon_shape(rightside);
physics_fixture_add_point(rightside,267.81,0.31);
physics_fixture_add_point(rightside,128.3,147.44);
physics_fixture_add_point(rightside,120.04,140.58);
physics_fixture_add_point(rightside,259.89,-0.78);
physics_fixture_set_collision_group(rightside, 1);
physics_fixture_set_density(rightside,0)
physics_fixture_set_awake(rightside,1)
physics_fixture_bind(rightside, id)

//bottom = physics_fixture_create();
//physics_fixture_set_polygon_shape(bottom);
//physics_fixture_add_point(bottom,-20,189);
//physics_fixture_add_point(bottom,221,189);
//physics_fixture_add_point(bottom,221,260);
//physics_fixture_add_point(bottom,-20,260);
//physics_fixture_set_collision_group(bottom, 1);
//physics_fixture_set_density(bottom,0)
//physics_fixture_set_awake(bottom,1)
//physics_fixture_bind(bottom, id)
isSelected = false;
//physics_fixture_set_kinematic(bottom)
physics_fixture_set_kinematic(rightside)
physics_fixture_set_kinematic(leftside)

