if(image_index==0){
	player.sword_itemn=1;
	global.dill+=1;
	object33.visible=true;
	instance_destroy(self)
}

if(image_index==1){
	player.sword_itemn=2;
	global.dill+=1;
	object30.visible=true;
	instance_destroy(self)
}

if(image_index==2){
	player.sword_itemn=3;
	global.dill+=1;
	object31.visible=true;
	instance_destroy(self)
}

if(image_index==3){
	player.pet=1;
	global.petdill+=1;
	object32.visible=true;
	if(global.pet==0){
	instance_create_depth(x,y,-1,object14)
	}
	global.pet=1;
	instance_destroy(self)
}