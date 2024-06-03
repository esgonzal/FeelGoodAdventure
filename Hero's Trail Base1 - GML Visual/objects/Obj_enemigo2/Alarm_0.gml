/// @DnDAction : YoYo Games.Instances.Create_Instance
/// @DnDVersion : 1
/// @DnDHash : 193D087A
/// @DnDArgument : "xpos_relative" "1"
/// @DnDArgument : "ypos_relative" "1"
/// @DnDArgument : "objectid" "Obj_dragon_proyectil"
/// @DnDSaveInfo : "objectid" "Obj_dragon_proyectil"
instance_create_layer(x + 0, y + 0, "Instances", Obj_dragon_proyectil);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 68655272
/// @DnDArgument : "steps" "90"
alarm_set(0, 90);