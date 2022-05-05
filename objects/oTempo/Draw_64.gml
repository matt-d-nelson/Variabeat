image_speed = 0;
image_index = selected;
draw_self();

draw_sprite(sLabel,0,47,36);
draw_text(58,32,"tempo");

SetTextDefaults();
draw_set_halign(fa_center);
//draw_text(x+(sprite_width/2),y - (sprite_height/2),textIn);
draw_text(x+(sprite_width/2),y - (sprite_height/2)+1,tempo);



