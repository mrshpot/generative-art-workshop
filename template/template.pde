void setup() {
  size(800, 600);
}

void draw() {
  // TODO: your code here
}

void keyPressed() {
  if (key == RETURN || key == ENTER) {
    saveFrame("out-####.png");
  }
}