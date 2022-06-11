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
	
	//MATH mouse_x/4 for resolution compensation / floor to round down to nearest int
	//subtract x value to get mouse distance from origin 
	//divide by sprite_width to convert into a val between 0 and 1
	//multiply by 2 and subtract 1 to convert to a val between -1 and 1
	tempoVar = (((floor(mouse_x/4)-x) / sprite_width) * 2) - 1;
	tempoVar = clamp(tempoVar,-1,1);
}
