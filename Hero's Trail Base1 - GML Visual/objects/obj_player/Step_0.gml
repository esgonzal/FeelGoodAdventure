/// @description Insert description here

nearbyNPC = collision_rectangle(x - lookRange, y - lookRange, x + lookRange, y + lookRange, Obj_NPC1, true, false);

var key_e = ord("E");

if (nearbyNPC) {
    // Show the 'E' indicator above the NPC
    if (!instance_exists(obj_E)) {
        instance_create_layer(Obj_NPC1.x, Obj_NPC1.y - 64, "preguntas", obj_E);
    }

    // Check if 'E' key is pressed
    if (keyboard_check_pressed(key_e)) {
        // Create the question object
        if (!instance_exists(obj_pregunta)) {
            instance_create_layer(Obj_NPC1.x-480, Obj_NPC1.y - 600, "preguntas", obj_pregunta);
			show_debug_message("obj_pregunta created");
        }
    }
} else {
    // Destroy the 'E' indicator if the player is not near the NPC
    if (instance_exists(obj_E)) {
        instance_destroy(obj_E);
    }
}
