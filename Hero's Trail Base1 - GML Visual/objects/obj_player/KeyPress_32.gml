/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 630C80D1
/// @DnDArgument : "code" "var sword = instance_create_layer(x + 0, y + 0, "Instances", ObjAttack);$(13_10)$(13_10)sword.image_xscale = image_xscale;$(13_10)$(13_10)	energia += -1;$(13_10)$(13_10)$(13_10)"
var sword = instance_create_layer(x + 0, y + 0, "Instances", ObjAttack);

sword.image_xscale = image_xscale;

	energia += -1;

/// @DnDAction : YoYo Games.Audio.Play_Audio
/// @DnDVersion : 1.1
/// @DnDHash : 3A5B0974
/// @DnDArgument : "soundid" "snd_sword_swing"
/// @DnDSaveInfo : "soundid" "snd_sword_swing"
audio_play_sound(snd_sword_swing, 0, 0, 1.0, undefined, 1.0);