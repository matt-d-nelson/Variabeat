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
	changeToGain += sign(mouse_x-mousePrevious)*0.055;
	changeToGain = clamp(changeToGain,-1,1);
	mousePrevious = mouse_x;
}
