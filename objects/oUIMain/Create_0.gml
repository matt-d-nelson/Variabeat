indent = 41;

gridObject = instance_create_depth(indent,63,depth-1,oStepGrid);
soundsObject = instance_create_depth(indent - sprite_get_width(sSound), 64, depth-1, oSoundsManager);
muteSoloObject = instance_create_depth(indent,63,depth-1,oMuteSolo);
tempoObject = instance_create_depth(indent + sprite_get_width(sLabel) + 5,36, depth-1,oTempo);
playObject = instance_create_depth(indent, 144, depth-1, oPlay);
volumeObject = instance_create_depth(indent + sprite_get_width(sPlay) + sprite_get_width(sLabel) + 9, 144, depth-1, oVolume);
densityObject = instance_create_depth(indent + sprite_get_width(sPlay) + sprite_get_width(sLabel) + 9, 144 + sprite_get_height(sSlider) + 3, depth-1, oDensity);

saveLoadObject = instance_create_depth(indent,24,depth-1,oSaveLoad);

timer = 0;
stepIndex = 0;
gain = 2;
density = 1;
soloMode = false;

//logo
greenY = y+2;
pinkY = y+2;
blackY = y+2;
animateGreen = false;
animatePink = false;
animateBlack = false;

