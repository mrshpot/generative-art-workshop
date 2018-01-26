void setup() {
  size(800, 600);
}

void draw() {
  background(40, 40, 40);
  noStroke();
  if (mouseX < width/2) {
    background(#D04030);
  }
}

void keyPressed() {
  if (key == RETURN || key == ENTER) {
    saveFrame("out-####.png");
  }
}