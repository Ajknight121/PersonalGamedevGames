if(paused){
    draw_sprite_ext(screenShot,0,0,0,1,1,0,c_white,1);
	draw_set_alpha(0.3)
	draw_rectangle_color(0,0,global.ideal_width,global.ideal_height,c_black,c_black,c_black,c_black,false)
	draw_set_alpha(1)
	draw_set_color(c_white)
	draw_text(200 * 0.5, 200 * 0.5, "Paused");
	draw_sprite(sJerma,0,global.ideal_width/2,global.ideal_height/2)
}


if (paused = true) exit;

var screen_middleX = global.ideal_width/2
var screen_middleY = global.ideal_height/2

var fuel_bar_height = 120	 
var fuel_bar_XO = min(300,screen_middleX-20)
var fuel_bar_width = 20	

var fuel_factor = oPlayer.fuel/oPlayer.fuel_max


draw_rectangle(screen_middleX+fuel_bar_XO,     
				screen_middleY+fuel_bar_height,
				screen_middleX+fuel_bar_XO+fuel_bar_width,
				screen_middleY-fuel_bar_height,true)     
				
				
draw_rectangle(screen_middleX+fuel_bar_XO,     
			screen_middleY+fuel_bar_height, 
			screen_middleX+fuel_bar_XO+fuel_bar_width, 
			screen_middleY+fuel_bar_height-(fuel_bar_height*2)*fuel_factor,false) 
			
draw_text(10,10,global.time_factor)


if oPlayer.state = PLAYERSTATE.DEAD
{
	if gameover = false
	{
		global.score_final = global.score
		gameover = true
	}
}

if gameover = true
{
	
	game_over_alph = lexp(game_over_alph,1,0.02)
	draw_set_alpha(game_over_alph)
	draw_set_color(c_black)
	draw_rectangle(0,0,global.ideal_width,global.ideal_height,false)
	draw_set_alpha(1)
	
	draw_set_color(c_white)
	if text_time <= 0 
	{
		text_offest = lexp(text_offest,0,0.06)
	}
	else text_time --;
	
	
	draw_text(screen_middleX+text_offest,screen_middleY,"Death is not the end...")
	draw_text(screen_middleX-text_offest,screen_middleY+32,"(Press R To Restart)")
}