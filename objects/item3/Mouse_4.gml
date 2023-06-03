if(global.hp>1000){
	global.it3=1
	global.hp-=1000;
	instance_destroy(self)
}