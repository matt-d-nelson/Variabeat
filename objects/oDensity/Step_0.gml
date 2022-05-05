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
	//calc handler coordinates
	sliderX = floor(mouse_x/4);
	sliderX = clamp(sliderX, x+3, x+sprite_width-3);
	
	//MATH desc in oVolume	
	changeToDensity = (((floor(mouse_x/4)-x) / sprite_width) * 2) - 1;
	changeToDensity = clamp(changeToDensity,-1,1);
}
