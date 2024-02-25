leftside = physics_fixture_create();
physics_fixture_set_polygon_shape(leftside);
physics_fixture_add_point(leftside,7.52-top_right_origin,-3.23);
physics_fixture_add_point(leftside,22.15-top_right_origin,0.014);
physics_fixture_add_point(leftside,41.23-top_right_origin,70.28);
physics_fixture_add_point(leftside,27.71-top_right_origin,70.20);
physics_fixture_set_density(leftside,0)
physics_fixture_set_awake(leftside,1)
physics_fixture_bind(leftside, id)
physics_fixture_set_kinematic(leftside)

rightSide = physics_fixture_create();
physics_fixture_set_polygon_shape(rightSide);
physics_fixture_add_point(rightSide,96.67-top_right_origin,70.18);
physics_fixture_add_point(rightSide,83.08-top_right_origin,70.44);
physics_fixture_add_point(rightSide,101.057-top_right_origin,-0.523);
physics_fixture_add_point(rightSide,118.126-top_right_origin,-2.37);
physics_fixture_set_density(rightSide,0)
physics_fixture_set_awake(rightSide,1)
physics_fixture_bind(rightSide, id)
physics_fixture_set_kinematic(rightSide)

middle = physics_fixture_create();
physics_fixture_set_polygon_shape(middle);
physics_fixture_add_point(middle,17.07-top_right_origin,52.09);
physics_fixture_add_point(middle,108.83-top_right_origin,52.18);
physics_fixture_add_point(middle,116.20-top_right_origin,76.47);
physics_fixture_add_point(middle,12.96-top_right_origin,75.96);
physics_fixture_set_density(middle,0)
physics_fixture_set_awake(middle,1)
physics_fixture_bind(middle, id)
physics_fixture_set_kinematic(middle)

leftcenter = physics_fixture_create();
physics_fixture_set_polygon_shape(leftcenter);
physics_fixture_add_point(leftcenter,21.71-top_right_origin,66.03);
physics_fixture_add_point(leftcenter,1.21-top_right_origin,151.30);
physics_fixture_add_point(leftcenter,8.82-top_right_origin,0.48);
physics_fixture_set_density(leftcenter,0)
physics_fixture_set_awake(leftcenter,1)
physics_fixture_bind(leftcenter, id)
physics_fixture_set_kinematic(leftcenter)

rightcenter = physics_fixture_create();
physics_fixture_set_polygon_shape(rightcenter);
physics_fixture_add_point(rightcenter,115.81-top_right_origin,1.48);
physics_fixture_add_point(rightcenter,123.22-top_right_origin,151.30);
physics_fixture_add_point(rightcenter,104.71-top_right_origin,67.03);
physics_fixture_set_density(rightcenter,0)
physics_fixture_set_awake(rightcenter,1)
physics_fixture_bind(rightcenter, id)
physics_fixture_set_kinematic(rightcenter)
