if(a=0){
if(other.hit_delay = 0) {
	instance_create_depth(x,y,-2,effect)
	other.hrt=1;
	other.hp-=10;
	player.hp+=20;
	other.vsp+=30;
	other.move=1;
	other.x+=20;
	other.alarm[1] = 2
	other.hit_delay = 1
	combo.image_alpha=1;
	global.combo+=1;
	global.comboget=1;
	global.com+=1;
}
}
else if(a=1){
	if(other.hit_delay = 0) {
	instance_create_depth(x,y,-2,effect)
	other.hrt=1;
	other.hp-=30;
	player.hp+=30;
	other.vsp-=60;
	other.move=1;
	other.x+=80;
	other.alarm[1] = 2
	other.hit_delay = 1
	a=0;
	combo.image_alpha=1;
	global.combo+=1;
	global.comboget=1;
	}	
}
if(other.hp<=0)
instance_destroy(other);