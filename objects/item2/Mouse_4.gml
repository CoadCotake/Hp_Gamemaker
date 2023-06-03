if(global.hp>1000){
	global.it2=1
	global.hp-=1000;
	instance_destroy(self)
}