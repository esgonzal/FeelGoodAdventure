/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 344820F2
instance_destroy();

/// @DnDAction : YoYo Games.Particles.Effect
/// @DnDVersion : 1
/// @DnDHash : 34A5FDFA
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y_relative" "1"
/// @DnDArgument : "type" "8"
/// @DnDArgument : "size" "1"
/// @DnDArgument : "color" "$FF02B4F4"
effect_create_below(8, x + 0, y + 0, 1, $FF02B4F4 & $ffffff);