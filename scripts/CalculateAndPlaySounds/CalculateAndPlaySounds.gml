function CalculateAndPlaySounds(_stepArray,_muteSoloArray){
	for(i = 0; i < array_length(_stepArray); i++) {
		if _stepArray[i].active && _stepArray[i].chance >= random(1) && !_muteSoloArray[i].mute {
			if !soloMode || _muteSoloArray[i].solo {
				playSoundSwitch(i);
			}
		}
	}
}

function playSoundSwitch(_index) {
	switch (_index) {
		case SOUND.KICK:
			audio_play_sound(soundsObject.sounds[SOUND.KICK].sound, 100, false);
		break;
		case SOUND.SNARE:
			audio_play_sound(soundsObject.sounds[SOUND.SNARE].sound, 100, false);
		break;
		case SOUND.SNARE_GHOST:
			audio_play_sound(soundsObject.sounds[SOUND.SNARE_GHOST].sound, 100, false);
		break;
		case SOUND.HTOM:
			audio_play_sound(soundsObject.sounds[SOUND.HTOM].sound, 100, false);
		break;
		case SOUND.HTOM_GHOST:
			audio_play_sound(soundsObject.sounds[SOUND.HTOM_GHOST].sound, 100, false);
		break;
		case SOUND.LTOM:
			audio_play_sound(soundsObject.sounds[SOUND.LTOM].sound, 100, false);
		break;
		case SOUND.LTOM_GHOST:
			audio_play_sound(soundsObject.sounds[SOUND.LTOM_GHOST].sound, 100, false);
		break;
		case SOUND.HHAT:
			audio_play_sound(soundsObject.sounds[SOUND.HHAT].sound, 100, false);
		break;
		case SOUND.HHAT_GHOST:
			audio_play_sound(soundsObject.sounds[SOUND.HHAT_GHOST].sound, 100, false);
		break;
		default:
		break;
	}
}

function EnforceGlobalDensity(_twoDemArray, _density) {
	for(i = 0; i < array_length(_twoDemArray); i++) {
		for(n = 0; n < array_length(_twoDemArray[i]); n++) {
			if _twoDemArray[i][n].affectedByDensity {
				_twoDemArray[i][n].density = _density;
			}
		}
	}
}

function CheckForSolo(_array) {
	for(i = 0; i < array_length(_array); i++) {
		if _array[i].solo {
			soloMode = true;
			return;
		}
	}
	soloMode = false;
	return;
}

