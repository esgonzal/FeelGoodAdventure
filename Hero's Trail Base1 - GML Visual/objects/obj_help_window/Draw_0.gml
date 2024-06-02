draw_self();

draw_set_font(fnt_controls);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);

draw_set_colour($FF000000 & $ffffff);
var l0D28A9BF_0=($FF000000 >> 24);
draw_set_alpha(l0D28A9BF_0 / $ff);

draw_text(x + 350, y + 250,  + string(controls));

draw_set_colour($FFFFFFFF & $ffffff);
var l595E6497_0=($FFFFFFFF >> 24);
draw_set_alpha(l595E6497_0 / $ff);

draw_set_halign(fa_left);
draw_set_valign(fa_top);