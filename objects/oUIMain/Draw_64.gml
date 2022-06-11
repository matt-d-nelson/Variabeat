/// @description Draw UI Elements
SetTextDefaults();
draw_sprite(sUI,0,x,y);

draw_sprite_ext(
	sLogoGreen,
	0,
	x+indent-6,
	greenY,
	image_xscale,
	image_yscale,
	0,
	c_white,
	1
);
draw_sprite_ext(
	sLogoPink,
	0,
	x+indent-6,
	pinkY,
	image_xscale,
	image_yscale,
	0,
	c_white,
	1
);
draw_sprite_ext(
	sLogoBlack,
	0,
	x+indent-6,
	blackY,
	image_xscale,
	image_yscale,
	0,
	c_white,
	1
);



//Troubleshooting
//draw_text(58,3,tempoVarObject.tempoVar*50);
//draw_text(78,10,volumeObject.sprite_width);

//draw_text(68,20,(floor(mouse_x/4)-volumeObject.x)/volumeObject.sprite_width);
//draw_text(98,20,volumeObject.x);


//draw_text(58,18,gridObject.minus.x);




