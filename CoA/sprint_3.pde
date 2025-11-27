Character[] group = new Character[3];

void setup(){
  size(1000,1000);
  group[0] = new Baseball(200,200,10);
  group[1] = new Skong(400,400,10);
  group[2] = new Test(600,600,10);
}

void draw(){
  background(0);
  for(int i = 0; i < 3; i++){
    group[i].x += 2;
    group[i].y += 2;
    group[i].show();
  }
}

class Character{
  Character(float x, float y, float d){
    this.x = x;
    this.y = y;
    this.d = d;
  }
  float x, y, d;
  void show(){
    ellipse(x, y, d, d);
  }
}

class Baseball extends Character{
  Baseball(float x, float y, float d){super(x, y, d);}
  void show(){
     fill(255);
     circle(x,y,20*d);  //big circle
     noFill();
     stroke(255,0,0);
     arc(x+18*d,y,30*d,30*d,13*PI/16,19*PI/16);  //right grip
     arc(x-18*d,y,30*d,30*d,0,3*PI/16);          //left lower grip
     arc(x-18*d,y,30*d,30*d,29*PI/16,2*PI);      //left upper grip
     stroke(0,0,0);
     arc(x-3*d,y-3*d,2.5*d,2*d,0,PI);            //left eye
     arc(x+3*d,y-3*d,2.5*d,2*d,0,PI);            //right eye
     arc(x,y+5*d,2.5*d,2*d,17*PI/16,31*PI/16);   //mouth
  }
}

class Skong extends Character{
  Skong(float x, float y, float d){super(x, y, d);}
  void show(){
      noStroke();
      fill(255);
      ellipse(x, y, 10*d, 25*d); //Head
      fill(0);
      ellipse(x, y-7.5*d, 6*d, 20*d);
  
      pushMatrix();
      fill(0);
      translate(x-2*d, y+8.5*d);
      rotate(-PI/5);
      ellipse(0, 0, 2*d, 3*d); //Left Eye
      popMatrix();
 
      pushMatrix();
      fill(0);
      translate(x+2*d, y+8.5*d);
      rotate(PI/5);
      ellipse(0, 0, 2*d, 3*d); //Right Eye
      popMatrix();
  }
}

class Test extends Character{
  Test(float x, float y, float d){super(x,y,d);}
  void show(){
    fill(255, 255, 0);
    rect(x,y,10*d,10*d);
    fill(0);
    rect(x+2*d, y+2*d,2*d,2*d);
    rect(x+7*d, y+2*d,2*d, 2*d);
    rect(x+3*d, y+7*d, 6*d, 2*d);
  }
}
