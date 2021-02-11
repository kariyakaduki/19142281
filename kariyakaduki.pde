float angle0 = 0;
float dif = 1.0;
float angle1=90;
float dif2= 1.0;

void setup(){
 size(2000, 1000, P3D);
 //background(255);

 camera(800,-1400, 600, 0, 100, 0, 0, 0, -1);


}
void draw(){

 background(255);

 if(keyPressed){
 
  if(key == 'w' ){
 angle0 = angle0 + dif;
 angle1 = angle1+dif2;
  }
 
 if(key == 's'){
 angle0 = angle0 - dif;
 angle1 = angle1-dif2;
 }
 }
  
 

  if(sin(radians(angle0))<0){
 dif =-dif;
 }
 
 if(sin(radians(angle1))<0){
 dif2 =-dif2;
 }

pushMatrix();
translate(0,0,100);
fill(175);
 box(200);
 popMatrix();
 
 pushMatrix();
 rotateX(PI/3);
 rotateX(radians(-2*angle0/3));
 translate(50,0,-100);
 fill(175);
 box(50,30,200);
 translate(0,0,-100);
 rotateX(-2*PI/3);
 rotateX(radians(4*angle0/3));
 translate(0,0,-100);
 box(50,30,200);
 translate(0,0,-100);
 rotateX(radians(-2*angle0/3));
 rotateX(PI/3);
 translate(0,0,-10);
 box(50,100,10);
 popMatrix();
 
 pushMatrix();
 rotateX(-PI/3);
 rotateX(radians(2*angle1/3));
 translate(-50,0,-100);
 fill(175);
 box(50,30,200);
 translate(0,0,-100);
 rotateX(2*PI/3);
 rotateX(radians(-4*angle1/3));
 translate(0,0,-100);
 box(50,30,200);
 translate(0,0,-100);
 rotateX(-PI/3);
 rotateX(radians(2*angle1/3));
 translate(0,0,-10);
 box(50,100,10);
 rotateX(-2*PI/3);
 popMatrix();
}
