
//mettre musique dans menu

if room == rm_mainmenu and !audio_is_playing(snd_mainmenu){
	audio_play_sound(snd_mainmenu, 1, true);
}
if room != rm_mainmenu and audio_is_playing(snd_mainmenu){
	audio_stop_sound(snd_mainmenu);
}
if room == game_room and !audio_is_playing(snd_night){
	audio_play_sound(snd_night, 1, true, 1);
}
if room == game_room and !audio_is_playing(snd_fan){
	audio_play_sound(snd_fan, 1, true, 1);
}
if global.on_cam = true{
	audio_stop_sound(snd_fan);
}
if room != game_room and audio_is_playing(snd_night){
	audio_stop_sound(snd_night);
	audio_stop_sound(snd_fan);
}
if room == rm_extras and !audio_is_playing(snd_extra){
	audio_play_sound(snd_extra, 1, true, 1);
}
if room != rm_extras and audio_is_playing(snd_extra){
	audio_stop_sound(snd_extra);
}
if room != rm_options and audio_is_playing(snd_extra){
	audio_stop_sound(snd_extra);
}
if room ==rm_warn and alarm[0]<1{
	alarm[0] = 600;
	
}