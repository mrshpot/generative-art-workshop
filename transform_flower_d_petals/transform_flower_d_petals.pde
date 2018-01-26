void setup() {
  size(800, 600);
}

void draw() {
  background(#303030);
  int N = 10;
  
  //noStroke();
  //fill(#B0B0B0);
  noFill();
  stroke(#B0B0B0);
  
  float petalW = 100.0;
  float petalH = 20.0;
  float petalOffset = 10.0;
  
  for (int i = 0; i < N; i += 1) {
    pushMatrix();
    float phi = TWO_PI * i / N;
    translate(width/2, height/2);
    rotate(phi);
    ellipse(petalW/2 + petalOffset, 0, petalW, petalH);
    popMatrix();
  }
}

void keyPressed() {
  if (key == RETURN || key == ENTER) {
    saveFrame("out-####.png");
  }
}