image_speed = 0;
image_index = selected;
draw_self();


//draw label
draw_sprite(sLabel,0,x - sprite_get_width(sLabel) - 4,y);
draw_text(x - sprite_get_width(sLabel) - 4 + 11,y-4,"tempo");


SetTextDefaults();
draw_set_halign(fa_center);
//draw_text(x+(sprite_width/2),y - (sprite_height/2),textIn);
draw_text(x+(sprite_width/2),y - (sprite_height/2)+1,tempo);



