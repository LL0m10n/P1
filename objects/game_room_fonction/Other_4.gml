 time_source_create(time_source_global, 15, time_source_units_seconds, , [], 1, time_source_expire_after);

time_source_start(time_source_game);

if(time_source_get_state(time_source_game) == time_source_state_stopped)
{
	time_source_reset(time_source_game);

	time_source_destroy(time_source_game, 0);

	room_goto(rm_mainmenu);
}

var l5E56194A_0;
l5E56194A_0 = keyboard_check_pressed(vk_tab);
if (l5E56194A_0)
{
	time_source_pause(time_source_game);

	var l7358A269_0;
	l7358A269_0 = keyboard_check_pressed(vk_tab);
	if (l7358A269_0)
	{
		time_source_resume(time_source_game);
	}
}