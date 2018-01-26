void setup() {
  size(400, 400);
}

void draw() {
  stroke(#C02030);
  strokeWeight(1.0);
  line(pmouseX, pmouseY, mouseX, mouseY);
}

void keyPressed() {
  if (key == RETURN || key == ENTER) {
    background(187, 187, 187);
    println("RETURN!");
  }
  println("keyPressed, key:", key, "keyCode:", keyCode);
  println("RETURN:", RETURN);
}