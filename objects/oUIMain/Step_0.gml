/// @description play audio/ adjust gain/ adjust density

// play audio
if playObject.playing {
	//check timer and ensure there are steps
	if timer <= 0 && array_length(gridObject.steps) != 0{
		if (stepIndex) >= array_length(gridObject.steps) {
			stepIndex = 0;
		}
		CheckForSolo(muteSoloObject.muteSoloArray);
		CalculateAndPlaySounds(gridObject.steps[stepIndex],muteSoloObject.muteSoloArray);
		timer = tempoObject.framesPerBeat;
		stepIndex++;
	}
	timer -= 2;
	
	//animate logo
	greenY = y+2+(sin(get_timer()*0.0000025*pi*(tempoObject.tempo/150))*5);
	pinkY = y+2+(sin(0.5+get_timer()*0.0000025*pi*(tempoObject.tempo/150))*5);
	blackY = y+2+(sin(1+get_timer()*0.0000025*pi*(tempoObject.tempo/150))*5);
} else {
	timer = 0;	
	
	//stop animating logo
	if round(greenY) == y+2 && blackY == y+2 && pinkY == y+2 {greenY = y+2;} else {greenY = y+2+(sin(get_timer()*0.0000025*pi*(tempoObject.tempo/150))*5);}
	if round(pinkY) == y+2 && blackY == y +2 {pinkY = y+2;} else {pinkY = y+2+(sin(0.5+get_timer()*0.0000025*pi*(tempoObject.tempo/150))*5);}
	if round(blackY) == y+2 {blackY = y+2;} else {	blackY = y+2+(sin(1+get_timer()*0.0000025*pi*(tempoObject.tempo/150))*5);}
}

//adjust gain
audio_master_gain(gain + (volumeObject.changeToGain*2));

//adjust density
//density += densityObject.changeToDensity;
if densityObject.selected {
	EnforceGlobalDensity(gridObject.steps, densityObject.changeToDensity/1.5);
}
