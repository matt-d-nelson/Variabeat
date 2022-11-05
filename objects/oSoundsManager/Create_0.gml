/// @description create array of sounds

sounds = [];
/*
array_push(sounds, CreateNewSound(sndKick, "kick", x, y));
array_push(sounds, CreateNewSound(sndSnare, "snr", x, y+sprite_get_height(sSound)));
array_push(sounds, CreateNewSound(sndSnareGhost, "(snr)", x, y+(2*sprite_get_height(sSound))));
array_push(sounds, CreateNewSound(sndHTom, "Htom", x, y+(3*sprite_get_height(sSound))));
array_push(sounds, CreateNewSound(sndHTomGhost, "(Htom)", x, y+4*(sprite_get_height(sSound))));
array_push(sounds, CreateNewSound(sndLTom, "Ltom", x, y+(5*sprite_get_height(sSound))));
array_push(sounds, CreateNewSound(sndLTomGhost, "(Ltom)", x, y+(6*sprite_get_height(sSound))));
array_push(sounds, CreateNewSound(sndHHat, "hat", x, y+(7*sprite_get_height(sSound))));
array_push(sounds, CreateNewSound(sndHHatGhost, "(hat)", x, y+(8*sprite_get_height(sSound))));
*/

// Omens
array_push(sounds, CreateNewSound(E1, "E1", x, y));
array_push(sounds, CreateNewSound(E2, "E2", x, y+sprite_get_height(sSound)));
array_push(sounds, CreateNewSound(E3, "E3", x, y+(2*sprite_get_height(sSound))));
array_push(sounds, CreateNewSound(B1, "B1", x, y+(3*sprite_get_height(sSound))));
array_push(sounds, CreateNewSound(B2, "B2", x, y+4*(sprite_get_height(sSound))));
array_push(sounds, CreateNewSound(B3, "B3", x, y+(5*sprite_get_height(sSound))));
array_push(sounds, CreateNewSound(D1, "D1", x, y+(6*sprite_get_height(sSound))));
array_push(sounds, CreateNewSound(D2, "D2", x, y+(7*sprite_get_height(sSound))));
array_push(sounds, CreateNewSound(D3, "D3", x, y+(8*sprite_get_height(sSound))));
