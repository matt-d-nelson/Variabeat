//get click selection
if mouse_check_button_pressed(mb_left) {
	if position_meeting(mouse_x/4,mouse_y/4,self) {
		selected = true;
		keyboard_string = "";
	} else {
		selected = false;	
	}
}

//
if selected && keyboard_string != "" {
	soundName = keyboard_string;
	//name = string_copy(keyboard_string, 1, 10; //potenital limit name string length
}
