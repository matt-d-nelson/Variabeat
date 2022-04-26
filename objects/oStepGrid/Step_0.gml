
if mouse_check_button(mb_left) {
	if position_meeting(mouse_x/4,mouse_y/4,minus) {
		minus.clicked = true;
	} 
}

if mouse_check_button(mb_left) {
	if position_meeting(mouse_x/4,mouse_y/4,plus) {
		plus.clicked = true;
	} 
}

