/// @description play audio/ adjust gain/ adjust density

// play audio
if playObject.playing {
	if timer <= 0 && array_length(gridObject.steps) != 0{
		if (stepIndex) >= array_length(gridObject.steps) {
			stepIndex = 0;
		}
		CalculateAndPlaySounds(gridObject.steps[stepIndex]);
		timer = tempoObject.framesPerBeat;
		stepIndex++;
	}
	timer -= 2;
} else {
	timer = 0;	
}

//adjust gain
audio_master_gain(gain + (volumeObject.changeToGain*2));

//adjust density
//density += densityObject.changeToDensity;
if densityObject.selected {
	EnforceGlobalDensity(gridObject.steps, densityObject.changeToDensity/1.5);
}
