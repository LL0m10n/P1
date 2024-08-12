/// @DnDAction : YoYo Games.Time.Time_Source_Create
/// @DnDVersion : 1
/// @DnDHash : 431E2BC2
/// @DnDArgument : "parent" "time_source_global"
/// @DnDArgument : "period" "15"
 = time_source_create(time_source_global, 15, time_source_units_seconds, , [], 1, time_source_expire_after);

/// @DnDAction : YoYo Games.Time.Time_Source_Start
/// @DnDVersion : 1
/// @DnDHash : 200D8566
/// @DnDArgument : "idx" "time_source_game"
time_source_start(time_source_game);

/// @DnDAction : YoYo Games.Time.If_Time_Source_State
/// @DnDVersion : 1
/// @DnDHash : 26C18011
/// @DnDArgument : "idx" "time_source_game"
/// @DnDArgument : "state" "time_source_state_stopped"
if(time_source_get_state(time_source_game) == time_source_state_stopped)
{
	/// @DnDAction : YoYo Games.Time.Time_Source_Reset
	/// @DnDVersion : 1
	/// @DnDHash : 53D62372
	/// @DnDParent : 26C18011
	/// @DnDArgument : "idx" "time_source_game"
	time_source_reset(time_source_game);

	/// @DnDAction : YoYo Games.Time.Time_Source_Destroy
	/// @DnDVersion : 1.1
	/// @DnDHash : 4D9BBEBC
	/// @DnDParent : 26C18011
	/// @DnDArgument : "idx" "time_source_game"
	time_source_destroy(time_source_game, 0);

	/// @DnDAction : YoYo Games.Rooms.Go_To_Room
	/// @DnDVersion : 1
	/// @DnDHash : 30A64D87
	/// @DnDParent : 26C18011
	/// @DnDArgument : "room" "rm_mainmenu"
	/// @DnDSaveInfo : "room" "rm_mainmenu"
	room_goto(rm_mainmenu);
}

/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
/// @DnDVersion : 1
/// @DnDHash : 5E56194A
/// @DnDArgument : "key" "vk_tab"
var l5E56194A_0;
l5E56194A_0 = keyboard_check_pressed(vk_tab);
if (l5E56194A_0)
{
	/// @DnDAction : YoYo Games.Time.Time_Source_Pause
	/// @DnDVersion : 1
	/// @DnDHash : 27A98347
	/// @DnDParent : 5E56194A
	/// @DnDArgument : "idx" "time_source_game"
	time_source_pause(time_source_game);

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 7358A269
	/// @DnDParent : 5E56194A
	/// @DnDArgument : "key" "vk_tab"
	var l7358A269_0;
	l7358A269_0 = keyboard_check_pressed(vk_tab);
	if (l7358A269_0)
	{
		/// @DnDAction : YoYo Games.Time.Time_Source_Resume
		/// @DnDVersion : 1
		/// @DnDHash : 6CE1B539
		/// @DnDParent : 7358A269
		/// @DnDArgument : "idx" "time_source_game"
		time_source_resume(time_source_game);
	}
}