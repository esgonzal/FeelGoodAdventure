/// @description Handle user selection
vk_1= ord("1");
vk_2= ord("2");
vk_3= ord("3");
vk_4= ord("4");


if (keyboard_check_pressed(vk_1)) {
    show_message("You selected option 1.");
    instance_destroy();
} else if (keyboard_check_pressed(vk_2)) {
    show_message("You selected option 2.");
    instance_destroy();
} else if (keyboard_check_pressed(vk_3)) {
    show_message("You selected option 3.");
    instance_destroy();
} else if (keyboard_check_pressed(vk_4)) {
    show_message("You selected option 4.");
    instance_destroy();
}