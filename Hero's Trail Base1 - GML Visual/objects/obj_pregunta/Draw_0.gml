/// @description Insert description here
// You can write your code in this editor
draw_self();
var camera_x = camera_get_view_x(view_camera[0]);
var camera_y = camera_get_view_y(view_camera[0]);

// Update the position of obj_pregunta based on the camera's position
x = camera_x + (view_wview[0] - 1064) / 2; // Center horizontally within the camera's view
y = camera_y + (view_hview[0] - 890) / 2 - 20; // Position above the center vertically within the camera's view

// Calculate position for question and options within the scroll
var question_x = 200; // X-coordinate for question within the scroll (adjust as needed)
var question_y = 200; // Lowering the question
var option_start_y = 300; // Lowering the options
var option_spacing = 75; // Vertical spacing between options

// Set the maximum width and height for text wrapping
var wrap_width = 800; // Adjust as needed
var wrap_height = 200; // Adjust as needed

// Draw the question with text wrapping
draw_set_color(c_black); // Adjust text color as needed

draw_text(x + question_x, y + question_y, pregunta); // Use x and y for scroll position

// Draw the options
draw_text(x + question_x, y + option_start_y, "1. "+ respuesta1); // Use x and y for scroll position
draw_text(x + question_x, y + option_start_y + option_spacing, "2. "+ respuesta2); // Use x and y for scroll position
draw_text(x + question_x, y + option_start_y + option_spacing * 2, "3. "+ respuesta3); // Use x and y for scroll position
draw_text(x + question_x, y + option_start_y + option_spacing * 3, "4. "+ respuesta4); // Use x and y for scroll position
