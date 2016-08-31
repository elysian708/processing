float segLength = 60;
float x, y, x2, y2; 
float a, b, a2, b2;

PImage hangi;

void setup() {
 
  size(640, 400);
  strokeWeight(15.0);
  stroke(200,300);
  
  hangi=loadImage("dd1.png");
  
  x = width/2 - 38;
  y = height/2 - 13;
  x2 = x;
  y2 = y;
  
  a = 219;
  b = height/2 - 13;
  a2 = a;
  b2 = b;
}

void draw() {
  background(0);
  
  fill(200,300,300);
  rect(220,180,60,85,10);
  image(hangi,200,80);
  //ellipse(268,140,72,72);

  float dx = mouseX - x;
  float dy = mouseY - y;
  float angle1 = atan2(dy, dx);  
  
  float tx = mouseX - cos(angle1) * segLength;
  float ty = mouseY - sin(angle1) * segLength;
  dx = tx - x2;
  dy = ty - y2;
  float angle2 = atan2(dy, dx);  
  x = x2 + cos(angle2) * segLength;
  y = y2 + sin(angle2) * segLength;
  
  segment(x, y, angle1); 
  segment(x2, y2, angle2);
  
  
  dx = mouseX - a;
  dy = mouseY - b;
  angle1 = atan2(dy, dx);  
  
  tx = mouseX - cos(angle1) * segLength;
  ty = mouseY - sin(angle1) * segLength;
  dx = tx - a2;
  dy = ty - b2;
  angle2 = atan2(dy, dx);
  a = a2 + cos(angle2) * segLength;
  b = b2 + sin(angle2) * segLength;
  
  segment(a, b, angle1); 
  segment(a2, b2, angle2);
  
  
  if(mousePressed){
    line(230,270,220,320);//left leg upper
    line(220,320,180,370);//left leg under
    line(275,270,280,320);//right leg upper
    line(280,320,280,370);//right leg under
  } else {
    line(230,270,220,320);//left leg upper
    line(220,320,220,370);//left leg under
    line(275,270,280,320);//right leg upper
    line(280,320,320,370);//right leg under
  }
  
}

void segment(float x, float y, float a) {
  pushMatrix();
  translate(x, y);
  rotate(a);
  line(0, 0, segLength, 0);
  popMatrix();

}