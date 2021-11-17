x = oPlayer.x;
y = oPlayer.y+10

image_angle = point_direction(x,y,mouse_x,mouse_y);

firingdelay -= 1;
recoil = max(0,recoil-1);
if (mouse_check_button(mb_left)) &&  (firingdelay < 0)
{
	firingdelay = 5;
	recoil = 4;
	with (instance_create_layer(x,y,"Bullets",oBullet))
	{
		speed = 25;
		direction = other.image_angle + random_range(-3,3);
		image_angle = direction;
	}
}

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);