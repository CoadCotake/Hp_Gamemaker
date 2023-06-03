if(hurt == 1)
	image_alpha = 0.4
else
	image_alpha = 1

// 점프 구현
if(keyboard_check_pressed(ord("W")))
{
	if(jump > 1) {
		vsp=-jumpspd;
		jump--
		
	}
}

//단검 던지기 
if(swords>0){
if(keyboard_check_pressed(ord("J")))
{
	if!(sword2==1&&sword3==1&&sword4==1){
	swords-=1;
	if(sword_itemn==0)
	instance_create_depth(x,y,-1,s_sword);
		if(sword_itemn==1){
			sword2=1;
			instance_create_depth(x,y,-1,s_sword2);
		}
		if(sword_itemn==2){
			sword3=1;
			instance_create_depth(x,y,-1,s_sword3);
		}
			if(sword_itemn==3){
			sword4=1;
			instance_create_depth(x,y,-1,s_sword4);
		}
	}
	else if(sword2==1&&sword3==1&&sword4==1){
		swords-=1;
		instance_create_depth(x,y,-1,s_swordcom);
	}
}
}
//점프 카운터 
if(place_meeting(x, y+1, floor_1))
{
	jump=2;
}


vsp += gravity_
// 중력 구현
while(place_meeting(x,y+vsp,floor_1)) {
		vsp-=vsp/2;
		if(vsp<1)
			vsp=0;
}
//벽
if(hurt==0)
{
	while(place_meeting(x,y+vsp,wall)) {
		vsp-=vsp/2;
			if(vsp<1)
				vsp=0;
	}
				if(place_meeting(x, y+1, wall))
				{
					jump=2;
				}

}
else
{
	
}
y += vsp;

//체력 
hp-=1;
//스킬 1
if(delay==0){
	if(keyboard_check_pressed(ord("K")))
	{
		hp-=30;
		State = Cst_Skill_1
		skill_1=1;
		instance_create_depth(x,y,-1,skill)
		skillg=1;
		vsp=-15;
	 delay=60;
	}
}

if(vsp>=0)
if(place_meeting(x,y+10,floor_1) || place_meeting(x,y+10,wall)) {
	if(State == Cst_Skill_1) {
		State = Cst_Place
		image_index = 4
	}
}

//스킬 2
if(delay2==0){
		if(keyboard_check_pressed(ord("S")))
	{
		hp-=30
		State = Cst_Skill_2
		skillg=1;
		instance_create_depth(x,y,-1,skill2)
		vsp=10;
		delay2=60;
	}
}
if(vsp>=0)
if(place_meeting(x,y+10,floor_1) || place_meeting(x,y+10,wall)) {
	if(State == Cst_Skill_2) {
		State = Cst_Place2
		image_index = 14
	}
}

//스킬 3
if(delay3==0){
	if(keyboard_check_pressed(ord("D")))
	{
		hp-=20;
		State = Cst_Skill_3;
		instance_create_depth(x,y,-1,skill3);
		skillg=1;
		skill3_vsp+=80;
		skill3_c=1;
		delay3=150;
	}
}
	if(hurt==0){
		while(place_meeting(x+skill3_vsp,y,wall)){
			skill3_vsp-=skill3_vsp/2;
				if(skill3_vsp<1)
					skill3_vsp=0;
		}
			while(place_meeting(x+skill3_vsp,y,floor_1)){
				skill3_vsp-=skill3_vsp/2;
					if(skill3_vsp<1)
						skill3_vsp=0;
			}
	if(skill3_c==1){
		x+=skill3_vsp;
		skill3_c=0;
	}
}

if(delay>0){
	delay-=1;
}
if(delay2>0){
	delay2-=1;
}
if(delay3>0){
	delay3-=1;
}


//벗어나면 돌아오는 
if(x<=127){
if!(place_meeting(x+1,y,wall))
x+=1;
}
if(x>=129){
if!(place_meeting(x-1,y,wall))
x-=1;
}

if(hp<=0)
game_restart();

if(y>400){
game_restart();
}