
function GenerateStep(_steps, _x, _y, _depth){
	var _returnArray = [];
	for (i = 0; i < SOUND.LENGTH; i++) {
		var _newNote = instance_create_depth(
			//+2 because it's 2 px in from edge of grid
			_x + 2 + 9 + (_steps * sprite_get_width(sStepBox)),
			//(1+i) because origin of sNote is bottom left
			_y + (2 * (1+i)) + ((1 + i) * sprite_get_height(sNote)),
			_depth-1,
			oNote
		);
		array_push(_returnArray,_newNote);
	}
	return _returnArray;
}

