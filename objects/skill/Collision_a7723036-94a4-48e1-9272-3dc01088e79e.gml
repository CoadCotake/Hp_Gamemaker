if(other.hit_delay = 0) {
	instance_create_depth(x,y,-2,effect)
	combo.image_alpha=1;
	global.combo+=1;
	global.comboget=1;
	global.com+=1;
	other.hrt=1;
	other.hp-=10;
	player.hp+=20;
	other.y-=30;
	other.move=1;
	other.x+=20;
	other.alarm[1] = 2
	other.hit_delay = 1
}

if(other.hp<=0)
instance_destroy(other);