for(i = 0; i < SOUND.LENGTH; i++) {
	instance_create_depth(
		x + 2, 
		y + (2 * (1+i)) + ((i) * sprite_get_height(sMuteSolo)),
		depth-1,
		oMuteSoloInst
	);	
}
