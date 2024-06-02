draw_self(); 
//draw_rectangle(x-lookRange, y-lookRange, x+lookRange, y+lookRange, true);


// Draw event of obj_player for visualizing collision rectangle
var col_x1 = x - lookRange;
var col_y1 = y - lookRange;
var col_x2 = x + lookRange;
var col_y2 = y + lookRange;

draw_rectangle(col_x1, col_y1, col_x2, col_y2, true);