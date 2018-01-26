void setup() {
  size(800, 600);
}

void draw() {
  background(35, 35, 35);
  
  stroke(#C0C0C0);
  line(50, 100, 50, 500);
  line(100, 100, 100, 500);
  line(150, 100, 150, 500);
  line(200, 100, 200, 500);
  line(250, 100, 250, 500);
  line(300, 100, 300, 500);
  line(350, 100, 350, 500);
  line(400, 100, 400, 500);
  line(450, 100, 450, 500);
  line(500, 100, 500, 500);
}

void keyPressed() {
  if (key == RETURN || key == ENTER) {
    saveFrame("out-####.png");
  }
}