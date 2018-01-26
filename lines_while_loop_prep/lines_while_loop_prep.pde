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

  float x;
  x = margin + 0 * step;
  line(x, y1, x, y2);
  x = margin + 1 * step;
  line(x, y1, x, y2);
  x = margin + 2 * step;
  line(x, y1, x, y2);
  x = margin + 3 * step;
  line(x, y1, x, y2);
  x = margin + 4 * step;
  line(x, y1, x, y2);
  x = margin + 5 * step;
  line(x, y1, x, y2);
  x = margin + 6 * step;
  line(x, y1, x, y2);
  x = margin + 7 * step;
  line(x, y1, x, y2);
  x = margin + 8 * step;
  line(x, y1, x, y2);
  x = margin + 9 * step;
  line(x, y1, x, y2);
}

void keyPressed() {
  if (key == RETURN || key == ENTER) {
    saveFrame("out-####.png");
  }
}