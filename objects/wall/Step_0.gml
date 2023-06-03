x-=hsp;
player.score_1+=hsp;

if(player.hurt==0)
{
	if(place_meeting(x-hsp,y,player))
	{	
		player.x-=hsp;	
	}
}

if(player.y<370){
if(player.x<0)
{
	player.hurt=1;
	player.hp-=100;
	player.x=130;
	player.alarm[1] = room_speed
}
}

if(x<-20)
instance_destroy(self)
