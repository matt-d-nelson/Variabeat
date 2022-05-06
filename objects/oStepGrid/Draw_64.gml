SetTextDefaults();
draw_self();

draw_sprite(sLabel,0,x,48);
draw_text(x+11,44,"steps");

for(i = 0; i < array_length(steps); i++) {
	draw_sprite(
		sStepBox,
		0,
		x + 9 + 1 + (i * sprite_get_width(sStepBox)),
		y + 1
	);	
}

draw_set_halign(fa_right);
draw_text(x,y-4,"kick-");
draw_text(x,y-4+(8*1),"snr-");
draw_text(x,y-4+(8*3),"Htom-");
draw_text(x,y-4+(8*5),"Ltom-");
draw_text(x,y-4+(8*7),"hat-");

draw_set_color(make_color_rgb(190,20,70));
draw_text(x,y-4+(8*2),"(snr)-");
draw_text(x,y-4+(8*4),"(Htom)-");
draw_text(x,y-4+(8*6),"(Ltom)-");
draw_text(x,y-4+(8*8),"(hat)-");

