leftside = physics_fixture_create();
physics_fixture_set_polygon_shape(leftside);
physics_fixture_add_point(leftside,70.69,72.44);
physics_fixture_add_point(leftside,-1.54,0.333);
physics_fixture_add_point(leftside,3.69,0.27);
physics_fixture_add_point(leftside,71.42,68.54);
physics_fixture_set_collision_group(leftside, 1);
physics_fixture_set_density(leftside,0)
physics_fixture_set_awake(leftside,1)
physics_fixture_bind(leftside, id)

rightside = physics_fixture_create();
physics_fixture_set_polygon_shape(rightside);
physics_fixture_add_point(rightside,72.58,72.14);
physics_fixture_add_point(rightside,72.21,68.42);
physics_fixture_add_point(rightside,140.99,-0.298);
physics_fixture_add_point(rightside,146.36,0.0968);
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

