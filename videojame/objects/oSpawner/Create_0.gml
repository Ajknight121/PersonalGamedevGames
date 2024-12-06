spawn_time = 0
spawn_time_max = 60*3

spawn_list = ds_list_create()

ds_list_add(spawn_list,new add_to_pool(oChaser,60,0,2,7,3,1.4))
ds_list_add(spawn_list,new add_to_pool(oGunner,60))

function choose_enemy(_random_value,_list)
{
	for (var i = 0; i < ds_list_size(_list); i++;)
	{
		
		var inst = ds_list_find_value(_list,i);
		show_debug_message("The Walue was {0}",_random_value)
		show_debug_message("The Weight was {0}",inst.weight)
		if _random_value < inst.weight
		{
			return inst;
		}
		_random_value -= inst.weight;
	}
}