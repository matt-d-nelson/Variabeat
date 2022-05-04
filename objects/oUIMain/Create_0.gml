gridObject = instance_create_depth(47,63,depth-1,oStepGrid);
tempoObject = instance_create_depth(47 + sprite_get_width(sLabel) + 4,36, depth-1,oTempo);
playObject = instance_create_depth(47, 144, depth-1, oPlay);
volumeObject = instance_create_depth(47 + sprite_get_width(sPlay) + sprite_get_width(sLabel) + 8, 144, depth-1, oVolume);

timer = 0;
stepIndex = 0;
gain = 2;
