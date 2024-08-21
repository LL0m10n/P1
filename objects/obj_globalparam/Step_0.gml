
//commandes sons

	//sdj
	if room == game_room and !audio_is_playing(snd_night){
		audio_play_sound(snd_night, 1, true, 1);
	} if room == game_room and !audio_is_playing(snd_fan){
		audio_play_sound(snd_fan, 1, true, 1);
	} if global.on_cam = true{
		audio_stop_sound(snd_fan);
	} if room != game_room and audio_is_playing(snd_night){
		audio_stop_sound(snd_night);
		audio_stop_sound(snd_fan);
	}
		//appels
		

	//menus
	if room == rm_mainmenu and !audio_is_playing(snd_mainmenu){
		audio_play_sound(snd_mainmenu, 1, true);
	}
	if room != rm_mainmenu and audio_is_playing(snd_mainmenu){
	audio_stop_sound(snd_mainmenu);
	}
	if room == rm_extras and !audio_is_playing(snd_extra){
		audio_play_sound(snd_extra, 1, true, 1);
	}
	if room != rm_extras and audio_is_playing(snd_extra){
		audio_stop_sound(snd_extra);
	}

//comportement sales
if room ==rm_warn and keyboard_check_pressed(vk_space){
	room_goto_next()
}

//if room ==rm_warn and alarm[0]<1{
	//alarm[0] = 600;
if room == game_room and !instance_exists(obj_nuitcompt){
	instance_create_depth(1632, 32, depth +0, obj_nuitcompt)
	instance_create_depth(1632, 128, depth +0, obj_heure)
	instance_create_depth(1728, 128, depth +0, obj_heuretype)
	instance_create_depth(480, 864, depth +0, obj_camtrigger)
}