t_mil -= 1;

if t_mil = -1 {
	t_mil = 9;
	t_sec -= 1;
}

if t_sec = -1 {
	t_sec = 59;
	t_min -= 1;
}

if !(t_mil = 0 && t_sec = 1 && t_min = 0) {
	alarm[0] = 6;
} 
//if (t_mil = 0 && t_sec = 1 && !dialog_create) {
//	instance_create_layer(0,0,"Instances",obj_DialogCustomer);
//	dialog_create = true;
//}
