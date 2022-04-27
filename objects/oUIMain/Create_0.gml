gridObject = instance_create_depth(47,63,depth-1,oStepGrid);
tempoObject = instance_create_depth(47 + sprite_get_width(sLabel) + 4,36, depth-1,oTempo);
playObject = instance_create_depth(47, 144, depth-1, oPlay);

timer = 0;
stepIndex = 0;
