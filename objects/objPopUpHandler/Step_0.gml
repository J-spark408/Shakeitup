timer += delta_time/1000000;
if (timer <= 0.4) {
	image_xscale = lerp(image_xscale, start_scale_max, stretch_speed);	
	image_yscale = lerp(image_yscale, start_scale_max, stretch_speed);
} else {
	image_xscale = lerp(image_xscale, start_scale, stretch_speed);	
	image_yscale = lerp(image_yscale, start_scale, stretch_speed);
	timer = 0;
}
