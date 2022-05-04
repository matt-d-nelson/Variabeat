
function GenerateStep(){
	var _returnArray = [];
	for (i = 0; i < SOUND.LENGTH; i++) {
		var _newNote = instance_create_depth(
			//+2 because it's 2 px in from edge of grid
			x + 2 + (array_length(steps) * sprite_get_width(sStepBox)),
			//(1+i) because origin of sNote is bottom left
			y + (2 * (1+i)) + ((1 + i) * sprite_get_height(sNote)),
			depth-1,
			oNote
		);
		array_push(_returnArray,_newNote);
	}
	return _returnArray;
}

