draw_self();

draw_text(x-20, y, sStepBox.sprite_width);

for(i = 0; i < array_length(steps); i++) {
	draw_sprite(
		sStepBox,
		0,
		x + 1 + (i * sprite_get_width(sStepBox)),
		y + 1
	);	
}
