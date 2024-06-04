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

if (estado_fisico >= 75) {
    move_speed = 5;
    max_energia = 14; // Increase max energy
    max_hearts = 14; // Increase max health
} else if (estado_fisico >= 50) {
    // No change, keep stats normal
} else if (estado_fisico >= 25) {
    move_speed = 3;
    max_energia = 8; // Decrease max energy
    max_hearts = 8; // Decrease max health
} else {
    move_speed = 2;
    max_energia = 5; // Decrease max energy further
    max_hearts = 5; // Decrease max health further
}
if (hearts > max_hearts) {
    hearts = max_hearts;
}
if (energia > max_energia) {
    energia = max_energia;
}
if (energia <= 0) {
	estado_fisico -= 10;
	if (estado_fisico < 0) {
        estado_fisico = 0;
    }
    energia = max_energia;
}

// Count steps taken by checking changes in position
if (x != previous_x || y != previous_y) {
    steps_taken += 1;
    previous_x = x;
    previous_y = y;
}

// Increase estado_fisico every 1000 steps (adjustable)
if (steps_taken >= 1000) {
    estado_fisico += 5; // Increase estado_fisico (adjustable)
    if (estado_fisico > 100) {
        estado_fisico = 100; // Ensure estado_fisico does not exceed 100
    }
    steps_taken = 0; // Reset step counter
}
