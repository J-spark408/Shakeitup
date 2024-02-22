if (mouse_check_button(mb_left)) {
    is_filling = true;
}
if (mouse_check_button_released(mb_left)) {
    is_filling = false;
}
if (is_filling) {
    fill_amount += fill_speed;
    if (fill_amount > max_fill_amount) {
        fill_amount = max_fill_amount;
        is_filling = false; // Stop filling when reaching the maximum
    }
}

