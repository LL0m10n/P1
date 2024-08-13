if position_meeting (mouse_x, mouse_y, self) and !instance_exists(obj_camflip){
	instance_create_depth(0, 0, depth +1,obj_camflip);
}