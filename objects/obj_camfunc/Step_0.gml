if global.room_cam == select_room{
	image_index = 2;
} else if position_meeting(mouse_x, mouse_y, self){
	image_index = 1;
} else {
	image_index = 0;
}
if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self) {
	audio_play_sound(snd_cam, 0, false, 0.05);
	global.room_cam = select_room;
}
if !instance_exists(obj_screen){
	instance_destroy();
}