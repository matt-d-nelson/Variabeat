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
	//text input to adjust tempo
	if(string_digits(textIn) != "") {
		tempo = string_digits(textIn);
	}
	
	
	//click and drag to adjust tempo
	//if mouse_check_button(mb_left) {
		//tempo += sign(mousePrevious-mouse_y)*2;
		//mousePrevious = mouse_y;
	//}
}


tempo = clamp(tempo, 1, 999);
framesPerBeat = 60/(tempo/60);
