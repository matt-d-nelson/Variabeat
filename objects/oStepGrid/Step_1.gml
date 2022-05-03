//moved to end step so any array changes happen first

//remove steps when minus button is clicked
if position_meeting(mouse_x/4,mouse_y/4,minus) {
	if mouse_check_button_pressed(mb_left) {
		if array_length(steps) > 0 {
			minus.clicked = true;
			for(i = 0; i < array_length(steps[array_length(steps)-1]); i++) {
				instance_destroy(steps[array_length(steps)-1][i]);
			}
			array_pop(steps);
		}
	} 
}

//add steps when plus button is clicked
if position_meeting(mouse_x/4,mouse_y/4,plus) {
	if mouse_check_button_pressed(mb_left) {
		if array_length(steps) < GRID_MAX {
			plus.clicked = true;
			array_push(steps,GenerateStep());
		}
	} 
}
