function CalculateAndPlaySounds(_array){
	for(i = 0; i < array_length(_array); i++) {
		if _array[i].active && _array[i].chance >= random(1) {
			switch (i) {
				case SOUND.KICK:
					audio_play_sound(sndKick, 100, false);
				break;
				case SOUND.SNARE:
					audio_play_sound(sndSnare, 100, false);
				break;
				case SOUND.SNARE_GHOST:
					audio_play_sound(sndSnareGhost, 100, false);
				break;
				case SOUND.HTOM:
					audio_play_sound(sndHTom, 100, false);
				break;
				case SOUND.HTOM_GHOST:
					audio_play_sound(sndHTomGhost, 100, false);
				break;
				case SOUND.LTOM:
					audio_play_sound(sndLTom, 100, false);
				break;
				case SOUND.LTOM_GHOST:
					audio_play_sound(sndLTomGhost, 100, false);
				break;
				case SOUND.HHAT:
					audio_play_sound(sndHHat, 100, false);
				break;
				case SOUND.HHAT_GHOST:
					audio_play_sound(sndHHatGhost, 100, false);
				break;
				default:
				break;
			}
		}
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
