
//remove steps when minus button is clicked
if mouse_check_button_pressed(mb_left) {
	if position_meeting(mouse_x/4,mouse_y/4,minus) {
		if array_length(steps) > 0 {
			minus.clicked = true;
			array_pop(steps);
		}
	} 
}

//add steps when plus button is clicked
if mouse_check_button_pressed(mb_left) {
	if position_meeting(mouse_x/4,mouse_y/4,plus) {
		if array_length(steps) < GRID_MAX {
			plus.clicked = true;
			array_push(steps,GenerateStep());
		}
	} 
}

