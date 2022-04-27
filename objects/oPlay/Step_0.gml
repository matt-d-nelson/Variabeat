if position_meeting(mouse_x/4,mouse_y/4,self) {
	if mouse_check_button_pressed(mb_left) {	
		if playing {
			playing = false;
		} else {
			playing = true;
		}
	} 
}
