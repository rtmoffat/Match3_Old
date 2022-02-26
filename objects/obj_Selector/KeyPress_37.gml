/// @description Insert description here
// You can write your code in this editor
//Keep track of previous direction. 
//If the current direction is not euqal to the previous direction or the previous direction is blank, DON'T move the dot
my_coors=scr_Move(x,y,global.dirs_struct.left_dir)
x=my_coors.new_x
y=my_coors.new_y
/*
if (global.prev_dir==0) or (global.prev_dir==global.dirs_struct.left_dir) {

	global.prev_dir=global.dirs_struct.left_dir

	show_debug_message("hi")
	curr_dot_inst=instance_place(x,y,obj_Dot)
	if curr_dot_inst {
		if curr_dot_inst.selected {
			neighbor_inst=instance_place(x-64,y,obj_Dot)
			if neighbor_inst {
				curr_dot_inst.x-=64
				neighbor_inst.x+=64
				curr_dot_inst.selected=0
				//Destroy obj_Selected instace
				instance_destroy(instance_place(x,y,obj_Selected))
				//Move the selector after moving dot
			}
		}
		x-=64
	}
	else {
		x-=64
	}
}*/