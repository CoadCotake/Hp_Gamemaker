if(player.vsp=0){
	image_index=1;
	a=1
}

if(a==0)
	player.x+=4;

if(a==1){
	image_alpha-=0.04
	if(image_alpha <= 0){
			player.skillg=0
			instance_destroy(self)
	}
}	

if(place_meeting(player.x+4,player.y,wall)){
	player.x-=5;
}



x= player.x
y = player.y


