/// @description play audio/ adjust gain/ adjust density

//get this frame's animation
var _greenAni = GreenAnimation();
var _pinkAni = PinkAnimation();
var _blackAni = BlackAnimation();

// play audio
if playObject.playing {
	//check timer and ensure there are steps
	if timer <= 0 && array_length(gridObject.steps) != 0{
		if (stepIndex) >= array_length(gridObject.steps) {
			stepIndex = 0;
		}
		CheckForSolo(muteSoloObject.muteSoloArray);
		CalculateAndPlaySounds(gridObject.steps[stepIndex],muteSoloObject.muteSoloArray);
		// add random range for tempo variation
		if tempoVarObject.tempoVar >= 0 {
			timer = tempoObject.framesPerBeat - irandom_range(0, tempoVarObject.tempoVar*25);
		} else {
			timer = tempoObject.framesPerBeat - irandom_range(tempoVarObject.tempoVar*25, 0);
		}
		stepIndex++;
	}
	timer -= 2;
	
	//animation sticks at 400 due to rounding issue/ low priority
	
	//animate logo
	if round(_greenAni) == y+2 && animateBlack && animatePink {animateGreen = true;}
	if round(_pinkAni) == y+2 && animateBlack {animatePink = true;}
	if round(_blackAni) == y+2 {animateBlack = true;}
} else {
	timer = 0;	
	
	//stop animating logo
	if round(greenY) == y+2 && blackY == y+2 && pinkY == y+2 {animateGreen = false;}
	if round(pinkY) == y+2 && blackY == y +2 {animatePink = false;}
	if round(blackY) == y+2 {animateBlack = false;}
}

//adjust gain
audio_master_gain(gain + (volumeObject.changeToGain*2));

//adjust density
//density += densityObject.changeToDensity;
if densityObject.selected {
	EnforceGlobalDensity(gridObject.steps, densityObject.changeToDensity/1.5);
}

//save and load
if saveLoadObject.executeSave {
	CreateSaveFile();
	saveLoadObject.executeSave = false;
}
if saveLoadObject.executeLoad {
	LoadSaveFile();
	saveLoadObject.executeLoad = false;
}

//apply animation
if animateGreen {greenY = _greenAni;} else {greenY = y+2;}
if animatePink {pinkY = _pinkAni;} else {pinkY = y+2;}
if animateBlack {blackY = _blackAni;} else {blackY = y+2;}

