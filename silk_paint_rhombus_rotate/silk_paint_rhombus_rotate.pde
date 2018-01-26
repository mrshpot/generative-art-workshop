void setup() {
  size(1024, 1024);
}

float brushX, brushY;
float brushAngle = 0.0;
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
    pushMatrix();
    translate(brushX, brushY);
    rotate(brushAngle);
    beginShape();
      vertex(r, 0.0);
      vertex(0.0, -r);
      vertex(-r, 0.0);
      vertex(0.0, r);
    endShape(CLOSE);
    popMatrix();
    
    brushX += (mouseX - brushX) * moveWeight;
    brushY += (mouseY - brushY) * moveWeight;
    brushAngle += delta * 0.005;
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