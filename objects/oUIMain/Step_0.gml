/// @description play audio
if playObject.playing {
	if timer <= 0 && array_length(gridObject.steps) != 0{
		
		if (stepIndex) >= array_length(gridObject.steps) {
			stepIndex = 0;
		}
		timer = tempoObject.framesPerBeat;
		CalculateAndPlaySounds(gridObject.steps[stepIndex]);
		stepIndex++;
	}
	timer -= 2;
} else {
	timer = 0;	
}

