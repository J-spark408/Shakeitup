if (mouse_check_button(mb_left)) {
    // Create pouring water object
    instance_create_layer(x, y, "Instances", obj_water);
    // Set the direction of water flow (for animation)
    y += pouring_speed;
}