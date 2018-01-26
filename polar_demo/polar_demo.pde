void setup() {
  size(800, 600);
}

float phi = 0.0;

void draw() {
  background(#C0C0C0);
  
  
  float centerX = width/2;
  float centerY = height/2;
  
  fill(#505050);
  noStroke();
  ellipse(width/2, height/2, 5, 5);
  
  
  phi += TWO_PI / 120.0;
  float r = 200;
  //float r = sqrt(sq(mouseX - centerX) + sq(mouseY - centerY));
  
  float x = centerX + cos(phi) * r;
  float y = centerY + sin(phi) * r;
  
  noFill();
  stroke(#505050);
  line(centerX, centerY, x, y);
  
  fill(#202020);
  noStroke();
  ellipse(x, y, 20, 20);
}

void keyPressed() {
  if (key == RETURN || key == ENTER) {
    saveFrame("out-####.png");
  }
}