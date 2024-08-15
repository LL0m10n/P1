if !instance_exists(obj_screen) {
	alarm[0] =17;
	sprite_index = camflipUP_sprite;
	audio_play_sound(snd_camflip, 1, false, 1);
	global.on_cam = true
} else {
	alarm[0] =17;
	sprite_index = camflipDN_sprite;
	audio_play_sound(snd_camflip, 1, false, 1);
	global.on_cam = false
}