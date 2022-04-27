/// @description Draw UI Elements
SetTextDefaults();
draw_sprite(sUI,0,x,y);

//Draw tempo and steps labels
draw_sprite(sLabel,0,47,36);
draw_text(58,32,"tempo");

draw_sprite(sLabel,0,47,48);
draw_text(58,44,"steps");

//Troubleshooting
draw_text(58,10,mouse_check_button(mb_left));
draw_text(68,10,mouse_y);

draw_text(58,18,gridObject.minus.x);




