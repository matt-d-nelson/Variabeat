image_index = selected;

draw_self();

SetTextDefaults();
draw_set_halign(fa_center);
draw_text(x+(sprite_width/2),y - (sprite_height/2),soundName);
