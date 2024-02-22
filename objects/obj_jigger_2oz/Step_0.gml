//if (instance_position(mouse_x,mouse_y,obj_jigger) && mouse_check_button_pressed(mb_left)){
//        if(isSelected){
//            isSelected = false;

//            sprite_set_offset(spr_jigger, 0, 0);
//        }
//        else {
//            isSelected = true;
//            relative_x = mouse_x - x;
//            relative_y = mouse_y - y;
//            //sprite_set_offset(spr_jigger, relative_x, relative_y);
//        }
//        show_debug_message("selected")
//    }


//if (isSelected){
//    phy_position_x = mouse_x -relative_x;
//    phy_position_y = mouse_y-relative_y ;
//}
//    gravity_direction = image_angle;
//if (isSelected && keyboard_check(ord("A"))){
//    // Rotate sprite slowly counterclockwise
//    image_angle += 2; // Adjust rotation speed as needed
//    phy_rotation -=2;
//    phy_angular_velocity -= 2
//}

//if (isSelected && keyboard_check(ord("D"))){
//    // Rotate sprite slowly counterclockwise
//    image_angle -= 2; // Adjust rotation speed as needed
//        phy_angular_velocity += 2phy_rotation +=2;
//}
event_inherited();

