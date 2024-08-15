if instance_exists(obj_screen){
	instance_create_depth(1568, 736,depth -2, obj_mapcam);
	instance_create_depth(1600, 864,depth -3, obj_cb1);
	instance_create_depth(1760, 800,depth -3, obj_cb2);
	instance_create_depth(1664, 896,depth -3, obj_cb3);
}
if global.room_cam == 1{
	sprite_index = cam4_sprite;
}
if global.room_cam == 2{
	sprite_index = mainstg_sprite;
}
if global.room_cam == 3{
	sprite_index = cam5_sprite;
}
if global.on_cam = false{
	instance_destroy(obj_mapcam);
	instance_destroy();
}