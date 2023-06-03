if(global.life==0){
instance_create_depth(x+100,y,-1,enamy)
enamy.image_index=irandom(2)
enamy.x=689;
enamy.y=244;
global.life=1;
}
alarm[0]=choose(300,600);