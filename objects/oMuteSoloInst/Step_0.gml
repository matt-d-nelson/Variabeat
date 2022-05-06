//activate/deactivate mute or solo
if position_meeting(mouse_x/4,mouse_y/4,self) {
	if mouse_check_button_pressed(mb_left) {	
		if solo {
			solo = false;
			image_index = 0;
		} else {
			solo = true;
			image_index = 2
		}
		mute = false;
	}
	if mouse_check_button_pressed(mb_right) {
		if mute {
			mute = false;
			image_index = 0;
		} else {
			mute = true;
			image_index = 1;
		}
		solo = false;
	}
}
