if (!instance_exists(obj_pregunta)) {
	var l4CC419CD_0 = false;
l4CC419CD_0 = instance_exists(obj_player);
if(l4CC419CD_0)
{
	// Draw the HUD coin sprite
	//draw_sprite(spr_hud_coin, 0, 1100, 25);

	// Change the font to ft_hud
	//draw_set_font(fnt_hud);

	// Draw the player's coins value
	// Taken from the player
	// using obj_player.coins
	//draw_text(1135, 15, string("x") + string(obj_player.coins));

	var l2D691599_0 = sprite_get_width(spr_hud_heart);
	var l2D691599_1 = 0;
	for(var l2D691599_2 = obj_player.hearts ; l2D691599_2 > 0; --l2D691599_2) {
		draw_sprite(spr_hud_heart, 0, 30 + l2D691599_1, 30);
		l2D691599_1 += l2D691599_0;
	}
	
	var l17640CBA_0 = sprite_get_width(spr_hud_energia);
	var l17640CBA_1 = 0;
	for(var l17640CBA_2 = obj_player.energia; l17640CBA_2 > 0; --l17640CBA_2) {
		draw_sprite(spr_hud_energia, 0, 50 + l17640CBA_1, 90);
		l17640CBA_1 += l17640CBA_0;
	}
}


}
