/// @param sound
/// @param name
/// @param x
/// @param y

function CreateNewSound(_sound,_name,_x,_y){
	var _newSound = instance_create_depth(_x,_y,depth-1,oSound);
	
	_newSound.soundName = _name;
	_newSound.sound = _sound;
	
	return _newSound;
}