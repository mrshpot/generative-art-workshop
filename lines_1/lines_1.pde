void setup() {
  size(800, 600);
}

void draw() {
  background(35, 35, 35);
  
  stroke(#C0C0C0);
  line(400, 100, 400, 500);
}

void keyPressed() {
  if (key == RETURN || key == ENTER) {
    saveFrame("out-####.png");
  }
}