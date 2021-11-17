/// @description Update camera
if (instance_exists(follow))
{
		yTo = follow.y;
		xTo = follow.x;
}

x += (xTo - x) /25;
y += (yTo - y) /25;

x = clamp(x,view_w_half,room_width);
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);