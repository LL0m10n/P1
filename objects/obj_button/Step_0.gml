
// change sprite si souris sur bouton
if position_meeting(mouse_x, mouse_y, self) {
image_index = 1; 
} else {
image_index = 0;
}

//envoie vers la room souhaitée si clique gauche
if mouse_check_button_pressed(mb_left) and position_meeting(mouse_x, mouse_y, self) {
	room_goto(gotoroom);
}