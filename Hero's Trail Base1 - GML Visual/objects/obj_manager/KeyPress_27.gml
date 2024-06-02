/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 7EAEE315
/// @DnDArgument : "var" "pause"
/// @DnDArgument : "value" "false"
if(pause == false)
{
	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 2F6DC074
	/// @DnDParent : 7EAEE315
	/// @DnDArgument : "var" "camera_x"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "camera_get_view_x"
	/// @DnDArgument : "arg" "view_camera"
	var camera_x = camera_get_view_x(view_camera);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 0F40D607
	/// @DnDParent : 7EAEE315
	/// @DnDArgument : "var" "camera_y"
	/// @DnDArgument : "var_temp" "1"
	/// @DnDArgument : "function" "camera_get_view_y"
	/// @DnDArgument : "arg" "view_camera"
	var camera_y = camera_get_view_y(view_camera);

	/// @DnDAction : YoYo Games.Sequences.Sequence_Create
	/// @DnDVersion : 1
	/// @DnDHash : 6073B532
	/// @DnDParent : 7EAEE315
	/// @DnDArgument : "xpos" "camera_x"
	/// @DnDArgument : "ypos" "camera_y"
	/// @DnDArgument : "var" "pause_seq"
	/// @DnDArgument : "sequenceid" "seq_pause_menu"
	/// @DnDArgument : "layer" ""GUI""
	/// @DnDSaveInfo : "sequenceid" "seq_pause_menu"
	pause_seq = layer_sequence_create("GUI", camera_x, camera_y, seq_pause_menu);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 325E91E0
	/// @DnDParent : 7EAEE315
	/// @DnDArgument : "function" "instance_deactivate_all"
	/// @DnDArgument : "arg" "true"
	instance_deactivate_all(true);

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 1E2C65FC
	/// @DnDParent : 7EAEE315
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "pause"
	pause = true;
}

/// @DnDAction : YoYo Games.Common.Else
/// @DnDVersion : 1
/// @DnDHash : 45FC9E55
else
{
	/// @DnDAction : YoYo Games.Sequences.Sequence_Destroy
	/// @DnDVersion : 1
	/// @DnDHash : 297D078B
	/// @DnDParent : 45FC9E55
	/// @DnDArgument : "var" "pause_seq"
	layer_sequence_destroy(pause_seq);

	/// @DnDAction : YoYo Games.Common.Function_Call
	/// @DnDVersion : 1
	/// @DnDHash : 2FF43CCE
	/// @DnDParent : 45FC9E55
	/// @DnDArgument : "function" "instance_activate_all"
	instance_activate_all();

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 2A15A5BF
	/// @DnDParent : 45FC9E55
	/// @DnDArgument : "expr" "false"
	/// @DnDArgument : "var" "pause"
	pause = false;
}