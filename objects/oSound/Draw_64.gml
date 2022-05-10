image_index = selected;

draw_self();

SetTextDefaults();
draw_set_halign(fa_right);
draw_text(x+(sprite_width)+1,y - (sprite_height/2),soundName + "-");
