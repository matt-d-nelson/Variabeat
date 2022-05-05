SetTextDefaults();
//Draw the label box and text
draw_sprite(sLabel, 0, x - sprite_get_width(sLabel) - 4, y);
draw_text(x - sprite_get_width(sLabel) + 5,y-4,"density");

//Draw volume bars
draw_sprite_ext(
	sVol1,
	0,
	x,
	y,
	min(1+changeToDensity, 1),
	image_yscale,
	0,
	c_white,
	1
);
draw_sprite_ext(
	sVol2,
	0,
	x + sprite_get_width(sVol1) + 1,
	y,
	max(0, changeToDensity),
	image_yscale,
	0,
	c_white,
	1
);

//Draw volume container
draw_self();

//Draw click handle
draw_sprite(
	sSliderHandle,
	selected,
	sliderX,
	y
);
