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

float moveWeight = 0.05;

PVector brush[];
float radii[];

void draw() {
  //background(187, 187, 187);
  if (drawing) {
    float mouseDeltaX = mouseX - brushX;
    float mouseDeltaY = mouseY - brushY;
    float mouseDelta = sqrt(sq(mouseDeltaX) + sq(mouseDeltaY));
    
    // regenerate brush
    for (int i = 0; i < brush.length; i += 1) {
      float phi = TWO_PI * float(i) / float(brush.length);
      brush[i].x = cos(phi) * radii[i];
      brush[i].y = sin(phi) * radii[i];
    }
    
    // float r = delta;
    float r = 50.0;
    r += mouseDelta * 0.2;
    int alpha = 30;
    alpha +=mouseDelta * 0.5;
    
    noFill();
    stroke(10, 77, 178, alpha);
    strokeWeight(1);
    
    pushMatrix();
    translate(brushX, brushY);
    beginShape();
      // The first and last points in a series of curveVertex() lines will be used to guide the beginning and end of a the curve.
      PVector last = brush[brush.length - 1];
      PVector first = brush[0];
      curveVertex(last.x * r, last.y * r);
      for (int i = 0; i < brush.length; i += 1) {
        curveVertex(brush[i].x * r, brush[i].y * r);
      }
      curveVertex(first.x * r, first.y * r);
    endShape(CLOSE);
    popMatrix();
    
    brushX += (mouseX - brushX) * moveWeight;
    brushY += (mouseY - brushY) * moveWeight;
    
  }
  float mutateStrength = 0.02;
  for (int i = 0; i < brush.length; i += 1) {
    radii[i] += randomGaussian() * mutateStrength;
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