// Check for nearby NPCs of specific types
nearbyNPC = collision_rectangle(x - lookRange, y - lookRange, x + lookRange, y + lookRange, Obj_npc11, true, false)
          || collision_rectangle(x - lookRange, y - lookRange, x + lookRange, y + lookRange, Obj_npc12, true, false)
          || collision_rectangle(x - lookRange, y - lookRange, x + lookRange, y + lookRange, Obj_npc13, true, false)
          || collision_rectangle(x - lookRange, y - lookRange, x + lookRange, y + lookRange, Obj_npc141, true, false)
          || collision_rectangle(x - lookRange, y - lookRange, x + lookRange, y + lookRange, Obj_npc15, true, false);
var key_e = ord("E");

// Additional check to store only specific NPC types
if (nearbyNPC) {
        // Show the 'E' indicator above the NPC
        if (!instance_exists(obj_E)) {
			// Calculate offsets for positioning the 'E' indicator
			var eOffsetX = 0; // Adjust as needed to center horizontally
			var eOffsetY = -64; // Offset to position 'E' above the player
			// Draw the 'E' indicator
			instance_create_layer(x + eOffsetX, y + eOffsetY, "preguntas", obj_E);
		}
        // Check if 'E' key is pressed
        if (keyboard_check_pressed(key_e)) {
            // Create the question object
            if (!instance_exists(obj_pregunta)) {
                instance_create_layer(x-500, y-500, "preguntas", obj_pregunta);
                show_debug_message("obj_pregunta created");
            }
        }
} else {
    // Destroy the 'E' indicator if the player is not near a valid NPC
    if (instance_exists(obj_E)) {
        instance_destroy(obj_E);
    }
}