switch(State) {
	case Cst_Move:
		if(image_index > 3)
			image_index = 0
		break
	case Cst_Skill_1:
		if(image_index < 1) {
			image_index = 1
		} 
		if(image_index<4)
			image_index=4;
		else if(image_index >= 10) {
			image_index = 9
		}
	
		break
	case Cst_Skill_2:
		if(image_index<11)
			image_index=11;
			else if(image_index>=14)
			image_index=14;
		break
	case Cst_Skill_3:
		if(image_index < 16) {
			image_index = 16
		} else if(image_index >= 17) {
			image_index = 16
		}
		break
	case Cst_Place:
		if(image_index < 10) {
			image_index = 10
		} else if(image_index >= 12) {
			image_index = 10
			skill_1=0;
			State = Cst_Move
		}
		break
	case Cst_Place2:
		if(image_index<15)
		image_index=15;
		else if(image_index>=16){
		image_index=15;
		State=Cst_Move;
		}
		break
}

if(global.it1==1){
	
	sword_itemn=1;
	global.dill+=1;
	object33.visible=true;
	hp-=1000;
	global.it1=0
}

if(global.it2==1){
	sword_itemn=2;
	global.dill+=1;
	object30.visible=true;
	hp-=1000;
	global.it2=0
}

if(global.it3==1){
	sword_itemn=3;
	global.dill+=1;
	object31.visible=true;
	hp-=1000;
	global.it3=0
}

if(global.it4==1){
	pet=1;
	global.petdill+=1;
	object32.visible=true;
	if(global.pet==0){
	instance_create_depth(x,y,-1,object14)
	}
	global.pet=1;
	hp-=1000;
	global.it4=0
}