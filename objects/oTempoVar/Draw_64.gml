//Draw label
draw_sprite(sTempoVarBox,0,x-22,y);
draw_text(x - 19,y-4,"var");


//Draw bars
draw_sprite_ext(
	sVol1,
	0,
	x,
	y,
	min(1+tempoVar, 1),
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
	max(0, tempoVar),
	image_yscale,
	0,
	c_white,
	1
);

//Draw slider container
draw_self();

//Draw click handle
draw_sprite(
	sSliderHandle,
	selected,
	sliderX,
	y
);
