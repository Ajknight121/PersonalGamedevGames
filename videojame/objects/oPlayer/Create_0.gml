accel = .3
decel = 12

old_x = x
old_y = y

mass = 1

fx = 0
fy = 0

hspd = 0;
vspd = 0;

inputdir = 0
imputmag = 0

max_spd = 6


shoot_del = 0
shoot_del_max = 8

accuracy = 6

flash = 0

hp = 10

fuel_max = 100
fuel = fuel_max

enum PLAYERSTATE
{
	ACTIVE,
	FULEING,
	DEAD
}

state = PLAYERSTATE.ACTIVE