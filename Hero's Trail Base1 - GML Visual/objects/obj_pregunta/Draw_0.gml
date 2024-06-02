/// @description Draw event of obj_pregunta
draw_self()
// Calculate position for question and options within the scroll
var question_x = 200; // X-coordinate for question within the scroll (adjust as needed)
var question_y = 200; // Lowering the question

var option_start_y = 300; // Lowering the options
var option_spacing = 75; // Vertical spacing between options

// Draw the question
draw_set_color(c_black); // Adjust text color as needed
draw_text(x + question_x, y + question_y, pregunta); // Use x and y for scroll position

// Draw the options
draw_text(x + question_x, y + option_start_y, respuesta1); // Use x and y for scroll position
draw_text(x + question_x, y + option_start_y + option_spacing, respuesta2); // Use x and y for scroll position
draw_text(x + question_x, y + option_start_y + option_spacing * 2, respuesta3); // Use x and y for scroll position
draw_text(x + question_x, y + option_start_y + option_spacing * 3, respuesta4); // Use x and y for scroll position