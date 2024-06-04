/// @description Insert description here
// You can write your code in this editor
// Calculate offsets for positioning the 'E' indicator
var eOffsetX = 0; // Adjust as needed to center horizontally
var eOffsetY = -64; // Offset to position 'E' above the player

// Draw the 'E' indicator above the player
x = obj_player.x + eOffsetX;
y = obj_player.y + eOffsetY;
draw_self(); // Draw the sprite of the 'E' indicator

// Update the position of the 'E' indicator based on the player's position
