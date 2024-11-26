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