leftside = physics_fixture_create();
physics_fixture_set_polygon_shape(leftside);
physics_fixture_add_point(leftside,23.8,181.3);
physics_fixture_add_point(leftside,2.8,175.5);
physics_fixture_add_point(leftside,0.8,-2.5);
physics_fixture_add_point(leftside,13.6,2.9);
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
physics_fixture_add_point(bottom,202.8,176.3);
physics_fixture_add_point(bottom,198.8,212.5);
physics_fixture_add_point(bottom,2.8,207.5);
physics_fixture_add_point(bottom,-0.4,177.9);
physics_fixture_set_collision_group(bottom, 1);
physics_fixture_set_density(bottom,0)
physics_fixture_set_awake(bottom,1)
physics_fixture_bind(bottom, id)
isSelected = false;
physics_fixture_set_kinematic(bottom)
physics_fixture_set_kinematic(rightside)
physics_fixture_set_kinematic(leftside)

