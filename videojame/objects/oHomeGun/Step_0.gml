image_angle = shoot_dir;

if instance_exists(target)
{
	shoot_dir = point_direction(x,y,target.x,target.y)
	
	if shoot_del <= 0
	{
		shoot_del = shoot_del_max
		bullet_count += 1
		with instance_create_layer(x+lengthdir_x(sprite_width,shoot_dir),y+lengthdir_y(sprite_width,shoot_dir),"Instances",oBullet)
		{
			dmg = 1
			spd = 15
			dir = other.shoot_dir+random_range(-other.accuracy,other.accuracy)
		}
		
		if bullet_count >= salvo
		{
			bullet_count = 0
			shoot_del = shoot_del_max*15
		}
	}

}
else
{
	target = noone
}

if target = noone
{
	ds_list_clear(targ_list)
	collision_circle_list(x,y,300,opEnemy,true,true,targ_list,true)
	
	if ds_list_size(targ_list) > 0
	{
		target = ds_list_find_value(targ_list,0)
	}
}

shoot_del = approach(shoot_del,0,1)