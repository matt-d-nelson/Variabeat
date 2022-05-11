
if position_meeting(mouse_x/4,mouse_y/4,save) {
	if mouse_check_button_pressed(mb_left) {
		save.clicked = true;
		executeSave = true;
	} 
} 

if position_meeting(mouse_x/4,mouse_y/4,load) {
	if mouse_check_button_pressed(mb_left) {
		load.clicked = true;
		executeLoad = true;
	} 
} 
