draw_self();

draw_set_font(fnt_dialog);

draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_white);
if (StageStateHandler.StageState == GAMESTATE.Stirring) {
	draw_text(x+140, y+40, "Mix Shake");
}
if (StageStateHandler.StageState == GAMESTATE.Shaking) {
	draw_text(x+140, y+40, "Mix Stir");
}

draw_set_halign(fa_left);
draw_set_valign(fa_top);