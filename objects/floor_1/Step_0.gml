x-=hsp
hsp=wall.hsp;

if(place_meeting(x-hsp,y,player))
	{	
		player.x-=hsp;	
	}


if(player.x<0)
{
	player.hurt=1;
	player.hp-=100;
	player.x=130;
	player.alarm[1] = room_speed
}
if(x<-20)
instance_destroy(self)

