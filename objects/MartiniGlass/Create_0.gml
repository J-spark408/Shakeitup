leftside = physics_fixture_create();
physics_fixture_set_polygon_shape(leftside);
physics_fixture_add_point(leftside,0.66,0.015);
physics_fixture_add_point(leftside,150.67,194.98);
physics_fixture_add_point(leftside,-63.67,158.98);
physics_fixture_set_collision_group(leftside, 1);
physics_fixture_set_density(leftside,0)
physics_fixture_set_awake(leftside,1)
physics_fixture_bind(leftside, id)

rightside = physics_fixture_create();
physics_fixture_set_polygon_shape(rightside);
physics_fixture_add_point(rightside,176.9,149.5);
physics_fixture_add_point(rightside,166.5,144.7);
physics_fixture_add_point(rightside,282.8,-1.8);
physics_fixture_set_collision_group(rightside, 1);
physics_fixture_set_density(rightside,0)
physics_fixture_set_awake(rightside,1)
physics_fixture_bind(rightside, id)

bottom = physics_fixture_create();
physics_fixture_set_polygon_shape(bottom);
physics_fixture_add_point(bottom,66.41,144.73);
physics_fixture_add_point(bottom,201.92,143.73);
physics_fixture_add_point(bottom,140.92,199.48);
physics_fixture_set_collision_group(bottom, 1);
physics_fixture_set_density(bottom,0)
physics_fixture_set_awake(bottom,1)
physics_fixture_bind(bottom, id)
isSelected = false;
physics_fixture_set_kinematic(bottom)
physics_fixture_set_kinematic(rightside)
physics_fixture_set_kinematic(leftside)

