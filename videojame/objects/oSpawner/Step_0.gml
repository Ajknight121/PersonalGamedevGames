spawn_time = approach(spawn_time,0,1)

if spawn_time <= 0
{
	spawn_time = spawn_time_max;
	
	xx = irandom_range(0,room_width);
	
	total_weight = 0
	for (var i = 0; i<ds_list_size(spawn_list); i++;)
	{
		var inst = ds_list_find_value(spawn_list,i);
		total_weight += inst.weight;
	}
	
	random_value = random_range(0,total_weight);
	
	var enemy = choose_enemy(random_value,spawn_list);
	enemy_count = irandom_range_weighted(enemy.low,enemy.high,enemy.M,enemy.spread);

	side = irandom_range(1,4)
	repeat(enemy_count)
	{
		switch(side)
		{
			case 1:
				instance_create_depth(0,xx,depth,enemy.obj); break;
			case 2:
				instance_create_depth(xx,0,depth,enemy.obj); break;
			case 3:
				instance_create_depth(room_width,xx,depth,enemy.obj); break;
			case 4:
				instance_create_depth(xx,room_height,depth,enemy.obj); break;
				
		}
	}
	}