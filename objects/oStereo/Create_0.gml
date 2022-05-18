volumeBars = [];

for(i = 0; i < SOUND.LENGTH; i++) {
	var _thisBar = instance_create_depth(x+3 + (i * (sprite_get_width(sVolumeBar)+2)), y - 3, depth-1, oVolumeBar);
	array_push(volumeBars, _thisBar);
}

speaker = instance_create_depth(x + 59, y - 11, depth-1, oSpeaker);

