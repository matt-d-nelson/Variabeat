
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

//deselect note if click is released/ allow global density to affect chance if chance is less than 1
if !mouse_check_button(mb_left) && selected == true {
	selected = false;
	if chance < 1 {
		affectedByDensity = true;
		density = 0;
		densityPrevious = 0;
	} else {
		affectedByDensity = false;
	}
}

//adjust the chance with mouse_y movement if selected
if selected {
	rootChance += sign(mousePrevious-mouse_y)*0.1;
	chance = rootChance + density;
	mousePrevious = mouse_y;
}

if densityPrevious != density {
	chance = rootChance + density;
	densityPrevious = density;
}

chance = clamp(chance,0.1,1); //moved outside of selected for global density adjustment

// decrement flash
flash = max(flash-0.04,0);
