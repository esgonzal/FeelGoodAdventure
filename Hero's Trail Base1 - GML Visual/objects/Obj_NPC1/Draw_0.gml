// NPC object's Draw event
// Draw the sprite (optional, for visualization)
draw_self();

var col_x1 = x - sprite_width / 2; // Adjust for sprite width
var col_y1 = y - sprite_height / 2; // Adjust for sprite height
var col_x2 = x + sprite_width / 2; // Adjust for sprite width
var col_y2 = y + sprite_height / 2; // Adjust for sprite height

draw_rectangle(col_x1, col_y1, col_x2, col_y2, true);