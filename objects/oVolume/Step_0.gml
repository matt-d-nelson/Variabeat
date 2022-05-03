//select slider if clicked on
if position_meeting(mouse_x/4,mouse_y/4,self) {
	if mouse_check_button_pressed(mb_left) {	
		selected = true
	} 
}

//deselect slider if click is released
if !mouse_check_button(mb_left) && selected == true {
	selected = false;
}

//adjust gain if selected
if selected {
	changeToGain += sign(mousePrevious-mouse_y)*0.1;
	changeToGain = clamp(chance,0.1,2);
	mousePrevious = mouse_y;
}
