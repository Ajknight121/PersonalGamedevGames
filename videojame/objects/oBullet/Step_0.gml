x += lengthdir_x(spd,dir)*global.time_factor
y += lengthdir_y(spd,dir)*global.time_factor

image_angle = dir

if hp <= 0
{
	instance_create_depth(x,y,depth,oHit)
	instance_destroy();
}