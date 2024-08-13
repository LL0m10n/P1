if position_meeting(mouse_x, mouse_y, self) {
	image_index = 1;
} else {
	image_index = 0;
}
if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self) {
global.room_cam = select_room;
audio_play_sound(snd_cam, 1, false, 0.1);
}
if global.room_cam == select_room{
	image_index = 2;
} else {
	image_index = 0;
}