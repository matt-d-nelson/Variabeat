//get click selection
if mouse_check_button_pressed(mb_left) {
	if position_meeting(mouse_x/4,mouse_y/4,self) {
		selected = true;
		keyboard_string = "";
	} else {
		selected = false;	
	}
}
//Rename sound
if selected && keyboard_string != "" {
	soundName = keyboard_string;
	//name = string_copy(keyboard_string, 1, 10; //potenital limit name string length
}


if mouse_check_button_pressed(mb_right) {
	if position_meeting(mouse_x/4,mouse_y/4,self) {
		
		sound = audio_create_stream(get_open_filename("*.ogg",""));
		
		//---------Buggy .wav import---------//
		//This is an attempt to import a wav file as a buffer and manually strip the file of its header
		//This aproach produces glitchy results at best and crashes the app at worst
		//It seems that wav files exported by different apps have various non-sound data outside of their header
		
		/*
		var _newSound = get_open_filename("*.wav", "");

		var _newSound = get_open_filename("*.wav", "");
		var _file = file_bin_open(_newSound,0);
		var _size = file_bin_size(_file);
			
		var newAudioFile = buffer_create(_size, buffer_fixed, 1);
		for(i = 0; i < _size; i++) {
			buffer_write(newAudioFile, buffer_u8, file_bin_read_byte(_file));
		}
		file_bin_close(_file);
		
		buffer_seek(newAudioFile , buffer_seek_start, 0);
		var data_found = 0;
		for (i = 0; i < buffer_get_size(newAudioFile ); i++) {
		    if (data_found == 4)
		        break;
		    switch(data_found) {
		        case 0:
		            if(buffer_peek(newAudioFile , i, buffer_u8) == 100) { data_found++; } else { data_found := 0; }
		            break;
		        case 1:
		            if(buffer_peek(newAudioFile , i, buffer_u8) == 97)  { data_found++; } else { data_found := 0; }
		            break;
		        case 2:
		            if(buffer_peek(newAudioFile , i, buffer_u8) == 116) { data_found++; } else { data_found := 0; }
		            break;
		        case 3:
		            if(buffer_peek(newAudioFile , i, buffer_u8) == 97) {
		                data_found++;
		                sound = audio_create_buffer_sound(newAudioFile , buffer_s16, 44100, i + 5, buffer_get_size(newAudioFile) - i - 5, audio_stereo);
		            }
		            else {
		                data_found := 0;
		            }
		            break;
		    }
		}
		*/

	} 
}
