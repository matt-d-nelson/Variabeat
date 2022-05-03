SetTextDefaults();
//Draw the label box and text
draw_sprite(sLabel, 0, x - sprite_get_width(sLabel) - 4, y);
draw_text(x - sprite_get_width(sLabel) + 5,y-4,"volume");

//TODO change image x scale based on change to gain. MATH

//Draw volume bars
draw_sprite(sVol1, 0, x, y);
draw_sprite(sVol2, 0, x + sprite_get_width(sVol1) + 1, y);

//Draw volume container
draw_self();
