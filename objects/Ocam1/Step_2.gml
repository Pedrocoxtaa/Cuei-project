camera_set_view_size(view_camera[VIEWP], VLARG, VALTU)

if instance_exists(global.viewalvo) {
	var xcm = global.viewalvo.x - VLARG / 2
	var ycm = global.viewalvo.y - VALTU / 2
	
	xcm = clamp(xcm, 0 , room_width - VLARG)
	ycm = clamp(ycm, 0 , room_height - VALTU)
	
	var xcm2 = camera_get_view_border_x(view_camera[VIEWP])	
	var ycm2 = camera_get_view_border_y(view_camera[VIEWP])
	
	var xcm3 = lerp(xcm2, xcm, VSPD)
	var ycm3 = lerp(ycm2, ycm, VSPD)
	
	camera_set_view_pos(view_camera[VIEWP], xcm, ycm)
}