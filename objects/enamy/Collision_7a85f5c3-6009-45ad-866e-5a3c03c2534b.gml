global.combo+=1;
global.comboget=1;
global.com+=1;
hp-=global.petdill;
player.hp+=global.petdill;
instance_create_depth(x,y,-2,effect)
x+=30;
move=1;
hrt=1;
instance_destroy(other)