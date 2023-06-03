x-=move
y+=vsp;

move*=move_speed;

if(hrt==1) {
	vsp=1;
}
if(x<-260){
	global.life=0;
	instance_destroy(self);
}
if(y > 330)
	y = 330
	
if(y>320)
	global.life=0;
	

if(hp<=0){
hrt=0;
player.hp+=500;
move_speed=1.1;
global.life=0;
instance_destroy(self);
}
