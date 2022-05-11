
function CreateSaveFile() {
	var _saveData = [];
	
	//save tempo data
	var _saveTempo = {
		tempo : tempoObject.tempo,
		framesPerBeat : tempoObject.framesPerBeat
	}
	array_push(_saveData,_saveTempo);
	
	//save density data
	var _saveDensity = {
		sliderX : densityObject.sliderX,
		changeToDensity : densityObject.changeToDensity
	}
	array_push(_saveData,_saveDensity);
	
	//save sound data
	var _saveSounds = [];
	for (i = 0; i < array_length(soundsObject.sounds); i++) {
		var _soundInst = {
			soundName : soundsObject.sounds[i].soundName,
			sound : soundsObject.sounds[i].sound
		}
		array_push(_saveSounds,_soundInst);
	}
	array_push(_saveData,_saveSounds);
	
	//save grid data
	var _saveGrid = [];
	for (i = 0; i < array_length(gridObject.steps); i++) {
		var _thisStep = [];
		for (n = 0; n < array_length(gridObject.steps[i]); n++) {
			var _thisNote = {
				active : gridObject.steps[i][n].active,
				chance : gridObject.steps[i][n].chance,
				rootChance : gridObject.steps[i][n].rootChance,
				density : gridObject.steps[i][n].density,
				affectedByDensity : gridObject.steps[i][n].affectedByDensity
			}
			array_push(_thisStep,_thisNote);
		}
		array_push(_saveGrid,_thisStep);
	}
	array_push(_saveData,_saveGrid);
	
	//convert saveData array into JSON and save in buffer
	var _string = json_stringify(_saveData);
	var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
	buffer_write(_buffer, buffer_string, _string);
	buffer_save(_buffer, "savedState.save");
	buffer_delete(_buffer);
	
	show_debug_message("Game saved " + _string);
}

function LoadSaveFile() {
	if file_exists("savedState.save") {
		var _buffer = buffer_load("savedState.save");
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
		
		var _loadData = json_parse(_string);
		
		//load tempo
		tempoObject.tempo = _loadData[0].tempo;
		tempoObject.framesPerBeat = _loadData[0].framesPerBeat;
		//load density
		densityObject.sliderX = _loadData[1].sliderX;
		densityObject.changeToDensity = _loadData[1].changeToDensity;
		//load sounds
		for(i = 0; i < array_length(_loadData[2]); i++) {
			soundsObject.sounds[i].sound = _loadData[2][i].sound;
			soundsObject.sounds[i].soundName = _loadData[2][i].soundName;
		}
		//load steps
		gridObject.steps = [];
		for(j = 0; j < array_length(_loadData[3]); j++) {
			
			var _thisStep = GenerateStep(j, gridObject.x, gridObject.y, gridObject.depth);
			for (n = 0; n < array_length(_loadData[3][j]); n++) {
				_thisStep[n].active = _loadData[3][j][n].active;
				_thisStep[n].chance = _loadData[3][j][n].chance;
				_thisStep[n].rootChance = _loadData[3][j][n].rootChance;
				_thisStep[n].density = _loadData[3][j][n].density;
				_thisStep[n].affectedByDensity = _loadData[3][j][n].affectedByDensity;
			}
			array_push(gridObject.steps, _thisStep);
		}
	}
}
