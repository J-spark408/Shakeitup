draw_set_font(fnt_menu);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_set_color(c_maroon);
if (StageStateHandler.StageState == GAMESTATE.Stirring) {
	draw_text(x, y, "Shake");
}
if (StageStateHandler.StageState == GAMESTATE.Shaking) {
	draw_text(x, y, "Stir");
}
