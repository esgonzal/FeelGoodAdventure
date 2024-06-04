

speed = 0;

if(hearts > 0)
{
	image_blend = $FFFFFFFF & $ffffff;
	image_alpha = ($FFFFFFFF >> 24) / $ff;
} else {
	instance_create_layer(x + 0, y + 0, "Instances", Obj_player_defeated);
	instance_destroy();
}