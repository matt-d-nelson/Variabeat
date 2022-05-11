if clicked {
	timer = 15;
	clicked = false;
	image_index = 1;
}

timer = max(timer-1,0);
if timer <= 0 {
	image_index = 0;
}
