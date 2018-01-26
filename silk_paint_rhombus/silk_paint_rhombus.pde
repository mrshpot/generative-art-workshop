void setup() {
  size(1024, 1024);
}

float brushX, brushY;
boolean drawing = false;

float moveWeight = 0.2;

void draw() {
  //background(187, 187, 187);
  if (drawing) {
    float deltaX = mouseX - brushX;
    float deltaY = mouseY - brushY;
    float delta = sqrt(deltaX*deltaX + deltaY*deltaY);
    
    noFill();
    stroke(10, 77, 178, 187);
    strokeWeight(1);
    float r = delta;
    beginShape();
      vertex(brushX + r, brushY);
      vertex(brushX, brushY - r);
      vertex(brushX - r, brushY);
      vertex(brushX, brushY + r);
    endShape(CLOSE);
    
    brushX += (mouseX - brushX) * moveWeight;
    brushY += (mouseY - brushY) * moveWeight;
  }
}

void mousePressed() {
  drawing = true;
  brushX = mouseX;
  brushY = mouseY;
}

void mouseReleased() {
  drawing = false;
}

void keyPressed() {
  if (key == RETURN || key == ENTER) {
    saveFrame("out-######.png");
  }
  if (key == 'c') {
    background(187, 187, 187);
  }
}