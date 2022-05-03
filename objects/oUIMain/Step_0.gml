/// @description play audio

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

//adjust density

