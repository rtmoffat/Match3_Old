// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scr_Move(my_x,my_y,my_Dir) {

	if (global.prev_dir==0) or (global.prev_dir==my_Dir) {

		global.prev_dir=my_Dir

		show_debug_message("hi function")
		curr_dot_inst=instance_place(my_x,my_y,obj_Dot)
		if curr_dot_inst {
			if curr_dot_inst.selected {
				neighbor_inst=instance_place(x+my_Dir.x,y+my_Dir.y,obj_Dot)
				if neighbor_inst {
					curr_dot_inst.x+=my_Dir.x
					neighbor_inst.x+=(-my_Dir.x)
					curr_dot_inst.y+=my_Dir.y
					neighbor_inst.y+=(-my_Dir.y)
					curr_dot_inst.selected=0
					//Destroy obj_Selected instace
					instance_destroy(instance_place(my_x,my_y,obj_Selected))
					//Move the selector after moving dot
				}
			}
			my_x+=my_Dir.x
			my_y+=my_Dir.y
		}
		else {
			my_x+=my_Dir.x
			my_y+=my_Dir.y
		}
	}
return {new_x:my_x,new_y:my_y}
}
