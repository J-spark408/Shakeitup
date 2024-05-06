leftside = physics_fixture_create();
physics_fixture_set_polygon_shape(leftside);
physics_fixture_add_point(leftside,12.43,-1.14);
physics_fixture_add_point(leftside,29.04,244.79);
physics_fixture_add_point(leftside,-13.21,246.40);
physics_fixture_add_point(leftside,-18.39,0.79);
physics_fixture_set_collision_group(leftside, 1);
physics_fixture_set_density(leftside,0)
physics_fixture_set_awake(leftside,1)
physics_fixture_bind(leftside, id)

rightside = physics_fixture_create();
physics_fixture_set_polygon_shape(rightside);
physics_fixture_add_point(rightside,195.6,7.9);
physics_fixture_add_point(rightside,204.8,-1.5);
physics_fixture_add_point(rightside,199.8,179.5);
physics_fixture_add_point(rightside,185.8,186.3);
physics_fixture_set_collision_group(rightside, 1);
physics_fixture_set_density(rightside,0)
physics_fixture_set_awake(rightside,1)
physics_fixture_bind(rightside, id)

bottom = physics_fixture_create();
physics_fixture_set_polygon_shape(bottom);
physics_fixture_add_point(bottom,-41.6,177.8);
physics_fixture_add_point(bottom,260.43,179.32);
physics_fixture_add_point(bottom,244.96,214.32);
physics_fixture_add_point(bottom,-41.35,215.82);
physics_fixture_set_collision_group(bottom, 1);
physics_fixture_set_density(bottom,0)
physics_fixture_set_awake(bottom,1)
physics_fixture_bind(bottom, id)
isSelected = false;
physics_fixture_set_kinematic(bottom)
physics_fixture_set_kinematic(rightside)
physics_fixture_set_kinematic(leftside)

