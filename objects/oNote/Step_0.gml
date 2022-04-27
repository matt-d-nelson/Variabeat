
//activate and select note if clicked on
if position_meeting(mouse_x/4,mouse_y/4,self) {
	if mouse_check_button_pressed(mb_left) {	
		active = true;
		selected = true;
		mousePrevious = mouse_y;
	} 
}

//deactivate note
if position_meeting(mouse_x/4,mouse_y/4,self) {
	if mouse_check_button(mb_right) {	
		active = false;
	} 
}

//deselect note if click is released
if !mouse_check_button(mb_left) && selected == true {
	selected = false;
}

//adjust the chance with mouse_y movement if selected
if selected {
	chance += sign(mousePrevious-mouse_y)*0.1;
	chance = clamp(chance,0,1);
	mousePrevious = mouse_y;
}
