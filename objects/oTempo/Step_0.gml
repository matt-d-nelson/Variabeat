if mouse_check_button_pressed(mb_left) {
	if position_meeting(mouse_x/4,mouse_y/4,self) {
		selected = true;
		keyboard_string = "";
	} else {
		selected = false;	
	}
}

if selected {
	textIn = keyboard_string;

	if(string_digits(textIn) != "") {
		tempo = string_digits(textIn);
		tempo = clamp(tempo, 1, 999);
	}
}
