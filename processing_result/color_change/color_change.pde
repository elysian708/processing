
int value = 0;

void setup(){
  size(320,320);
  background(51);
}

void draw() {
  fill(value,200,300);
  rect(100, 100, 120, 120);
}

void mouseMoved() {
  value += 1;
  if (value > 300) {
    value = 0;
  }
}