event_inherited()

if image_index == 7 and !instance_exists(obj_transition){
	instance_create_depth(0, 0, 2, obj_transition);
}
if image_index > 0{
	obj_heuretype.image_index = 1;
} else {
	obj_heuretype.image_index = 0;
}