if (!instance_exists(obj_pregunta)) {
    var l4CC419CD_0 = false;
    l4CC419CD_0 = instance_exists(obj_player);
    if (l4CC419CD_0) {

        var heart_width = sprite_get_width(spr_hud_heart);
        var energy_width = sprite_get_width(spr_hud_energia);

        var start_x = 30; // Initial x position for both bars
		var start_y = 30; // Initial y position for the health bar
        var y_spacing = 10; // Spacing between the bars

        // Draw hearts (health bar)
        var heart_x = start_x;
        var heart_y = start_y;
        for (var i = min(obj_player.hearts, obj_player.max_hearts); i > 0; --i) {
            draw_sprite(spr_hud_heart, 0, heart_x, heart_y);
            heart_x += heart_width;
        }

        // Draw energy bar
        var energy_x = start_x;
        var energy_y = heart_y + sprite_get_height(spr_hud_heart) + y_spacing;
        for (var j = min(obj_player.energia, obj_player.max_energia); j > 0; --j) {
            draw_sprite(spr_hud_energia, 0, energy_x, energy_y);
            energy_x += energy_width;
        }
		// Draw estado_fisico with scaled text
        var estado_y = energy_y + sprite_get_height(spr_hud_energia) + y_spacing;
        draw_set_font(fnt_hud); // Use the regular font
        draw_set_color(c_white); // Set the text color
        draw_text_transformed(start_x, estado_y, "Estado Fisico: " + string(obj_player.estado_fisico) + "%", 0.5, 0.5, 0); // Scale down the text
    }
}
