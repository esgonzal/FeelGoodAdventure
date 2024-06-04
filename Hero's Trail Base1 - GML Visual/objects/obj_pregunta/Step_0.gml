/// @description Step event for obj_pregunta

// Check for key press and respond accordingly
if (keyboard_check_pressed(vk_1)) {
    // Handle option 1
    // Add your code here for option 1
    show_debug_message("Option 1 selected");
    instance_destroy(); // Destroy the obj_pregunta instance
} else if (keyboard_check_pressed(vk_2)) {
    // Handle option 2
    // Add your code here for option 2
    show_debug_message("Option 2 selected");
    instance_destroy(); // Destroy the obj_pregunta instance
} else if (keyboard_check_pressed(vk_3)) {
    // Handle option 3
    // Add your code here for option 3
    show_debug_message("Option 3 selected");
    instance_destroy(); // Destroy the obj_pregunta instance
} else if (keyboard_check_pressed(vk_4)) {
    // Handle option 4
    // Add your code here for option 4
    show_debug_message("Option 4 selected");
    instance_destroy(); // Destroy the obj_pregunta instance
}
