void setup() {
  size(800, 600);
}

void draw() {
  background(35, 35, 35);
  
  stroke(#C0C0C0);
  line(300, 100, 300, 500);
  line(500, 100, 500, 500);
}

void keyPressed() {
  if (key == RETURN || key == ENTER) {
    saveFrame("out-####.png");
  }
}