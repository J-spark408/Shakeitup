
if (showing_dialog == false) {
	if (dialog.count() <= 0) {
		instance_destroy();
		return;
	}
	
	current_dialog = dialog.pop();
	showing_dialog = true;
} else {
	if (textLength <= 0) {
		textLength = string_length(current_dialog.message);	
	}
	if (index < textLength) {
		cooldown--;
		if (cooldown <= 0) {
			index++;
			textDisplayed = string_copy(current_dialog.message, 1, index);
			cooldown = textSpeed;
		}
	}
	if (keyboard_check_released(key_next) && index >= textLength) {
		showing_dialog = false;
		alpha = 0;
		textLength = -1;
		index = 0;
		cooldown = textSpeed;
		textDisplayed = "";
	} else if (keyboard_check_released(key_next) && index < textLength) {
		textDisplayed = current_dialog.message;	
		index = textLength;
	}
	
}
