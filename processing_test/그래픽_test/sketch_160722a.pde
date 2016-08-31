PGraphics pg;

void setup() {
  size(640, 360);
  pg = createGraphics(400, 200);
  pg.ellipse(200,200,200,200);
}

void draw() {
  fill(225,225,500);
  ellipse(mouseX, mouseY, 65, 65);
  fill(500,500,500);
  noStroke();
  ellipse(mouseX, mouseY, 60, 60);
  
  pg.beginDraw();
  pg.background(51);
  pg.noFill();
  pg.stroke(225);
  pg.ellipse(mouseX-120, mouseY-60, 60, 60);
  pg.endDraw();
  
  // Draw the offscreen buffer to the screen with image() 
  image(pg, 120, 60); 
}