void setup() {
  size(800, 600);
}

void draw() {
  background(#C0C0C0);
  float y;
  
  
  // by themselves, sin/cos are in range [-1..1]
  y = 30;
  fill(#000000);
  text("sin(x)", 10, y - 5);
  noFill();
  beginShape();
  for (int x = 0; x < width; x += 1) {
    vertex(x, y - sin(x));
  }
  endShape();
  
  y = 60;
  fill(#000000);
  text("cos(x)", 10, y - 5);
  noFill();
  beginShape();
  for (int x = 0; x < width; x += 1) {
    vertex(x, y - cos(x));
  }
  endShape();
  
  
  // if we scale the range [-1..1] by 20, we get [-20..20]
  y = 120;
  fill(#000000);
  text("sin(x) * 20", 10, y - 25);
  noFill();
  beginShape();
  for (int x = 0; x < width; x += 1) {
    vertex(x, y - sin(x)*20);
  }
  endShape();
  
  y = 190;
  fill(#000000);
  text("cos(x) * 20", 10, y - 25);
  noFill();
  beginShape();
  for (int x = 0; x < width; x += 1) {
    vertex(x, y - cos(x)*20);
  }
  endShape();
  
    
  // divide the parameter to sin/cos to reduce frequency
  y = 300;
  fill(#000000);
  text("sin(x * 0.1) * 20", 10, y - 25);
  noFill();
  beginShape();
  for (int x = 0; x < width; x += 1) {
    vertex(x, y - sin(x * 0.1)*20);
  }
  endShape();
  
  y = 370;
  fill(#000000);
  text("cos(x * 0.1) * 20", 10, y - 25);
  noFill();
  beginShape();
  for (int x = 0; x < width; x += 1) {
    vertex(x, y - cos(x * 0.1)*20);
  }
  endShape();
    
  
  // map x from [0..width] to [0..2PI] to get a single cycle per width
  y = 480;
  fill(#000000);
  text("sin(x / width * 2PI) * 20", 10, y - 25);
  noFill();
  beginShape();
  for (int x = 0; x < width; x += 1) {
    vertex(x, y - sin(float(x) / width * TWO_PI)*20);
  }
  endShape();
  
  // can multiply the remapped parameter to get a specific number of cycles per width
  y = 550;
  fill(#000000);
  text("cos(x / width * 2PI * 5) * 20", 10, y - 25);
  noFill();
  beginShape();
  for (int x = 0; x < width; x += 1) {
    vertex(x, y - cos(float(x) / width * TWO_PI * 5)*20);
  }
  endShape();
}

void keyPressed() {
  if (key == RETURN || key == ENTER) {
    saveFrame("out-####.png");
  }
}