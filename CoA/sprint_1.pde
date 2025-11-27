Baseball b;
Skong s;
Test t;

void setup(){
  size(1000,1000);

  b = new Baseball(200,200,10);
  s = new Skong(400,400,10);
  t = new Test(600,600,10);
}

void draw(){
  background(0);

  b.x += 2;  b.y += 2;
  s.x += 2;  s.y += 2;
  t.x += 2;  t.y += 2;

  b.show();
  s.show();
  t.show();
}

class Baseball{
  float x,y,d;
  Baseball(float x, float y, float d){
    this.x = x; this.y = y; this.d = d;
  }

  void show(){
     fill(255);
     circle(x,y,20*d);  
     noFill();
     stroke(255,0,0);
     arc(x+18*d,y,30*d,30*d,13*PI/16,19*PI/16);
     arc(x-18*d,y,30*d,30*d,0,3*PI/16);
     arc(x-18*d,y,30*d,30*d,29*PI/16,2*PI);
     stroke(0,0,0);
     arc(x-3*d,y-3*d,2.5*d,2*d,0,PI);
     arc(x+3*d,y-3*d,2.5*d,2*d,0,PI);
     arc(x,y+5*d,2.5*d,2*d,17*PI/16,31*PI/16);
  }
}

class Skong{
  float x,y,d;
  Skong(float x, float y, float d){
    this.x = x; this.y = y; this.d = d;
  }

  void show(){
      noStroke();
      fill(255);
      ellipse(x, y, 10*d, 25*d);
      fill(0);
      ellipse(x, y-7.5*d, 6*d, 20*d);

      pushMatrix();
      fill(0);
      translate(x-2*d, y+8.5*d);
      rotate(-PI/5);
      ellipse(0, 0, 2*d, 3*d);
      popMatrix();

      pushMatrix();
      fill(0);
      translate(x+2*d, y+8.5*d);
      rotate(PI/5);
      ellipse(0, 0, 2*d, 3*d);
      popMatrix();
  }
}

class Test{
  float x,y,d;
  Test(float x, float y, float d){
    this.x = x; this.y = y; this.d = d;
  }

  void show(){
    fill(255, 255, 0);
    rect(x,y,10*d,10*d);
    fill(0);
    rect(x+2*d, y+2*d,2*d,2*d);
    rect(x+7*d, y+2*d,2*d, 2*d);
    rect(x+3*d, y+7*d, 6*d, 2*d);
  }
}
