pause_button = keyboard_check_pressed(vk_escape) or keyboard_check_pressed(ord("P"))
if pause_button // Initiate Pause 
{
	paused = !paused;
	if(!sprite_exists(screenShot)){
        screenShot = sprite_create_from_surface(application_surface,0,0,view_wport,view_hport,0,0,0,0);    
    }
}

if paused // Unpause
{
	if mouse_check_button_pressed(mb_left) or mouse_check_button_pressed(mb_right) or  keyboard_check_pressed(vk_space)
	{
		paused = !paused;
	}
}


if paused // Freezes all other objects EXCEPT itself
{
	instance_deactivate_all(1);
	
	audio_pause_all();
}
else
{
	if(sprite_exists(screenShot))
	{
        sprite_delete(screenShot);
    }
	audio_resume_all();
	instance_activate_all();
}