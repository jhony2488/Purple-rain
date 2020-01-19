class Drop{
float x=random(width);
float y=random(-700,-100);
float z=random(0,20);
float len= map(z,0,20,10,20);
float yspeed=map(z,0,20,1,20);
// funçao que faz a gota cair
void fall(){
 y=y+yspeed;
 // nesse caso aqui ele varia a velcidade das gotas
 float grav= map(z,0,20,0,0.2);
 
yspeed=yspeed+grav;
 
 if(y>height){
 y=random(-700,-100);
 yspeed=map(z,0,20,1,20);
 }
}
// funçao que aprsentara a gotra na tela
void show(){
  float thick=map(z,0,20,1,3);
  strokeWeight(thick);
  stroke(138,43,226);
  line(x,y,x,y+10);

}

}
