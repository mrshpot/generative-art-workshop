void setup() {
  size(800, 600);
}

void draw() {
  background(#303030);
  int N = 10;
  
  noStroke();
  fill(#B0B0B0);
  ellipse(width/2, height/2, 100, 20);
}

void keyPressed() {
  if (key == RETURN || key == ENTER) {
    saveFrame("out-####.png");
  }
}