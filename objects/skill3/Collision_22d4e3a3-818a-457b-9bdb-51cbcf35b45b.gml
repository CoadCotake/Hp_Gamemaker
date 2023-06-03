if(other.hit_delay = 0) {
	instance_create_depth(x,y,-2,effect)
	other.hrt=1;
	other.hp-=100;
	player.hp+=50;
	other.move=1;
	other.alarm[1] = 60
	other.hit_delay = 1
	combo.image_alpha=1;
	global.combo+=1;
	global.comboget=1;
	global.com+=1;
}

if(enamy.hp<=0){
player.hp+=100;
}