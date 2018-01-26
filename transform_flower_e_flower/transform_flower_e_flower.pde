void setup() {
  size(800, 600);
}

void draw() {
  background(#303030);
  int N = 10;
  
  
  float petalW = 100.0;
  float petalH = 20.0;
  float petalOffset = 10.0;
  
  noStroke();
  fill(#F0F0F0);
  
  for (int i = 0; i < N; i += 1) {
    pushMatrix();
    float phi = TWO_PI * i / N;
    translate(width/2, height/2);
    rotate(phi);
    ellipse(petalW/2 + petalOffset, 0, petalW, petalH);
    popMatrix();
  }
  
  fill(#FFDD00);
  stroke(#DDCC11);
  ellipse(width/2, height/2, 30, 30);
}

void keyPressed() {
  if (key == RETURN || key == ENTER) {
    saveFrame("out-####.png");
  }
}