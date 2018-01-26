void setup() {
  size(800, 600);
}

void draw() {
  background(40, 40, 40);
  noFill();
  stroke(#C0C0C0);
  strokeWeight(2);
  ellipse(mouseX, mouseY, 20, 20);
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void keyPressed() {
  if (key == RETURN || key == ENTER) {
    saveFrame("out-####.png");
  }
}