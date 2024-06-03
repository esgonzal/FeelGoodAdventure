/// @DnDAction : YoYo Games.Common.Execute_Code
/// @DnDVersion : 1
/// @DnDHash : 2B1A7E1E
/// @DnDArgument : "code" "// If there wasn't a collision$(13_10)// in the previous X position$(13_10)var l4FA8D836_0 = instance_place(xprevious, y, [obj_collision_parent]);$(13_10)if (!(l4FA8D836_0 > 0))$(13_10){$(13_10)	// Then move back to that$(13_10)	// point on the X axis$(13_10)	x = xprevious;$(13_10)	y = y;$(13_10)}$(13_10)$(13_10)else$(13_10){$(13_10)	// If there wasn't a collision$(13_10)	// in the previous y position$(13_10)	var l4179BEC2_0 = instance_place(x, yprevious, [obj_collision_parent]);$(13_10)	if (!(l4179BEC2_0 > 0))$(13_10)	{$(13_10)		// Then move back to that$(13_10)		// point on the Y axis$(13_10)		x = x;$(13_10)		y = yprevious;$(13_10)	}$(13_10)$(13_10)	else$(13_10)	{$(13_10)		// Otherwise just move back$(13_10)		// on both X and Y axes$(13_10)		x = xprevious;$(13_10)		y = yprevious;$(13_10)	}$(13_10)}$(13_10)$(13_10)instance_destroy();"
// If there wasn't a collision
// in the previous X position
var l4FA8D836_0 = instance_place(xprevious, y, [obj_collision_parent]);
if (!(l4FA8D836_0 > 0))
{
	// Then move back to that
	// point on the X axis
	x = xprevious;
	y = y;
}

else
{
	// If there wasn't a collision
	// in the previous y position
	var l4179BEC2_0 = instance_place(x, yprevious, [obj_collision_parent]);
	if (!(l4179BEC2_0 > 0))
	{
		// Then move back to that
		// point on the Y axis
		x = x;
		y = yprevious;
	}

	else
	{
		// Otherwise just move back
		// on both X and Y axes
		x = xprevious;
		y = yprevious;
	}
}

instance_destroy();