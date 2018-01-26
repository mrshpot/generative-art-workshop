void setup() {
  size(800, 600);
}

void draw() {
  background(35, 35, 35);
  
  stroke(#C0C0C0);
  float margin = 50;
  float y1 = 100;
  float y2 = 500;
  
  int N = 10;
  float step = (float(width) - margin*2) / (N - 1);

  int i = 0;
  while (i < N) {
    float x = margin + i * step;
    line(x, y1, x, y2);
    
    i += 1;
  }
}

void keyPressed() {
  if (key == RETURN || key == ENTER) {
    saveFrame("out-####.png");
  }
}