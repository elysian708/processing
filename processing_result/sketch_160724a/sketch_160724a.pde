int countTime = 0; 
int framePace = 30; 
int countMax = framePace * 100;
int backgroundColor = 255; 
int rectColor = 255;  
int strokeColor = rectColor - 80; 
int transparency = 80; 
int rectBorderShape = 20; 

void setup() { 
  size(600, 600); 
  background(backgroundColor);
  rectMode(CENTER);
  frameRate(framePace); 
} 

void draw() { 
  smooth(); 
  countTime++;

  if (countTime < countMax) { 

    if (mousePressed) { 
      pushMatrix(); 
      translate(mouseX, mouseY);

      if (mouseX != pmouseX) {  

        rotate(random(PI)); 
        fill(255, random (240), 0, transparency); 
        rect(0, 0, random(5, 80), random(5, 80), rectBorderShape); 
      }
      else { 
        noFill(); 
        strokeWeight(1);
        rotate(random(PI));
        stroke(255, random (240), 0, transparency);
        rect(0, 0, random(0, 400), random(0, 400), rectBorderShape); 
      } 
      popMatrix(); 
    } 

    else { 
      float centerX = random(800); 
      float centerY = random(800); 
      rotate (random(TWO_PI)); 
      strokeWeight(1);   
      stroke(strokeColor, strokeColor, strokeColor, transparency); 
      fill(rectColor, rectColor, rectColor, transparency/2); 
      rect (centerX, centerY, random(400), random(400), random(rectBorderShape*5)); 
      rect (centerX, centerY, random(400), random(400), random(rectBorderShape*5)); 
    } 

    if (keyPressed) { 
      background(backgroundColor); 
      countTime = 0; 
    } 
  } 
  
  else { 
    noLoop(); 
  } 
} 