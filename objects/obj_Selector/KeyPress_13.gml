/// @description Insert description here
// You can write your code in this editor
show_debug_message(string(sprite_xoffset))
show_debug_message(string(sprite_yoffset))
if !place_meeting(x,y,obj_Dot) {
	instance_create_depth(x,y,1,obj_Dot)
	show_debug_message("Creating")
}
else {
		if !place_meeting(x,y,obj_Selected) {
		instance_create_depth(x,y,1,obj_Selected)
		//instance_destroy(instance_place(x,y,obj_Dot))
		show_debug_message("Selecting")
	}
		else {
			instance_destroy(instance_place(x,y,obj_Selected))
			show_debug_message("De-Selecting")
	}
}
