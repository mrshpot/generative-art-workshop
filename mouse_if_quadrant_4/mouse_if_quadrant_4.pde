void setup() {
  size(800, 600);
}

void draw() {
  background(40, 40, 40);
  noStroke();
  if (mouseX < width/2) {
    if (mouseY < height/2) {
      background(#D04030);
    } else {
      background(#508070);
    }
  } else {
    if (mouseY < height/2) {
      background(#20C030);
    } else {
      background(#4090D0);
    }
  }
}

void keyPressed() {
  if (key == RETURN || key == ENTER) {
    saveFrame("out-####.png");
  }
}