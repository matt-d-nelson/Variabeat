
function CreateSaveFile() {
	var _saveData = [];
	
	//save tempo data
	var _saveTempo = {
		tempo : tempoObject.tempo,
		framesPerBeat : tempoObject.framesPerBeat
	}
	array_push(_saveData,_saveTempo);
	
	
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
		
		tempoObject.tempo = _loadData[0].tempo;
		tempoObject.framesPerBeat = _loadData[0].framesPerBeat;
	}
}
