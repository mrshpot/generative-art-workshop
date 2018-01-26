void setup() {
  size(1024, 1024);

  int N = 10;
  brush = new PVector[N];
  radii = new float[N];
  for (int i = 0; i < N; i += 1) {
    brush[i] = new PVector();
    radii[i] = 1.0;
  }
}

float brushX, brushY;
boolean drawing = false;

float moveWeight = 0.2;

PVector brush[];
float radii[];

void draw() {
  //background(187, 187, 187);
  if (drawing) {
    float deltaX = mouseX - brushX;
    float deltaY = mouseY - brushY;
    float delta = sqrt(deltaX*deltaX + deltaY*deltaY);
    
    // regenerate brush
    for (int i = 0; i < brush.length; i += 1) {
      float phi = TWO_PI * float(i) / float(brush.length);
      brush[i].x = cos(phi) * radii[i];
      brush[i].y = sin(phi) * radii[i];
    }
    
    noFill();
    stroke(10, 77, 178, 187);
    strokeWeight(1);
    //float r = delta;
    float r = 100.0;
    pushMatrix();
    translate(brushX, brushY);
    beginShape();
      for (int i = 0; i < brush.length; i += 1) {
        vertex(brush[i].x * r, brush[i].y * r);
      }
    endShape(CLOSE);
    popMatrix();
    
    brushX += (mouseX - brushX) * moveWeight;
    brushY += (mouseY - brushY) * moveWeight;
    
  }
  float mutateStrength = 0.05;
  for (int i = 0; i < brush.length; i += 1) {
    radii[i] += random(-1.0, 1.0) * mutateStrength;
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