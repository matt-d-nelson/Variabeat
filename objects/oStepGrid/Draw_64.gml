SetTextDefaults();
draw_self();

draw_sprite(sLabel,0,47,48);
draw_text(58,44,"steps");

for(i = 0; i < array_length(steps); i++) {
	draw_sprite(
		sStepBox,
		0,
		x + 1 + (i * sprite_get_width(sStepBox)),
		y + 1
	);	
}

draw_set_halign(fa_right);
draw_text(x,y-4,"kick-");
draw_text(x,y-4+(8*1),"snare-");
draw_text(x,y-4+(8*3),"H tom-");
draw_text(x,y-4+(8*5),"L tom-");
draw_text(x,y-4+(8*7),"hat-");

draw_set_color(make_color_rgb(190,20,70));
draw_text(x,y-4+(8*2),"(snare)-");
draw_text(x,y-4+(8*4),"(H tom)-");
draw_text(x,y-4+(8*6),"(L tom)-");
draw_text(x,y-4+(8*8),"(hat)-");

