void setup() {
  size(800, 600);
}

float partWidth = 60.0;
float partHeight = 60.0;
float partWidthHalf = partWidth * 0.5;
float partHeightHalf = partHeight * 0.5;

float marginX = 50.0;
float marginY = 60.0;
float spacingX = 50.0;
float spacingY = 90.0;
float textY = 20.0;

float xStep = partWidth + spacingX;
float yStep = partHeight + spacingY;

float x, y;

void nextRow() {
  x = marginX;
  y += yStep;
}


void advanceXY() {
  x += xStep;
  if (x + xStep > width) {
    nextRow();
  }
}


void draw() {
  color clearColor = #DDDDDD;
  background(clearColor);
  
  
  color strokeColor = #303030;
  color fillColor = #A0A0A0;
  int lineWidth = 3;
 
  color ghostStrokeColor = #A0A0A0;
  int ghostLineWidth = 1;
 
  color textColor = #000000;
  textSize(15);
 
  stroke(strokeColor);
  strokeWeight(lineWidth);
  fill(fillColor);
  x = marginX;
  y = marginY;



  fill(textColor);
  text("point", x, y - textY);
  fill(fillColor);
  
  point(x, y);
  point(x + partWidth, y);
  point(x + partWidth, y + partWidth);
  point(x, y + partWidth);
  advanceXY();
  
  ////////////////////////////////////////
  
  fill(textColor);
  text("line", x, y - textY);
  fill(fillColor);

  {
    line(x, y, x + partWidth, y + partHeight);
  }
  advanceXY();
  
  ////////////////////////////////////////
  
  fill(textColor);
  text("rect", x, y - textY);
  fill(fillColor);
  
  {
    rect(x, y, partWidth, partHeight);
  }
  advanceXY();
  
  ////////////////////////////////////////
  
  fill(textColor);
  text("triangle", x, y - textY);
  fill(fillColor);
  
  {
    triangle(
      x + partWidth/2.0, y, 
      x + partWidth, y + partHeight, 
      x, y + partHeight
    );
  }
  advanceXY();
  
  ////////////////////////////////////////
  
  fill(textColor);
  text("quad", x, y - textY);
  fill(fillColor);
  
  {
    quad(
      x, y + partHeight/2.0, 
      x + partWidth/2.0, y, 
      x + partWidth, y + partHeight/2.0, 
      x + partWidth/2.0, y + partHeight
    );
  }
  
  nextRow();
  
  ////////////////////////////////////////
  
  fill(textColor);
  text("ellipse", x, y - textY);
  fill(fillColor);

  ellipseMode(CORNER); // important!
  {
    ellipse(x, y, partWidth, partHeight);
  }
  advanceXY();
  
  ////////////////////////////////////////
  
  fill(textColor);
  text("arc(OPEN)", x, y - textY);
  fill(fillColor);
  
  ellipseMode(CORNER); // important!
  {
    arc(x, y, partWidth, partHeight, 0.0, PI + QUARTER_PI, OPEN);
  }
  advanceXY();
  
  ////////////////////////////////////////
  
  fill(textColor);
  text("arc(CHORD)", x, y - textY);
  fill(fillColor);

  ellipseMode(CORNER); // important!
  {
    arc(x, y, partWidth, partHeight, 0.0, PI + QUARTER_PI, CHORD);
  }
  advanceXY();
  
  ////////////////////////////////////////
  
  fill(textColor);
  text("arc(PIE)", x, y - textY);
  fill(fillColor);

  ellipseMode(CORNER); // important!
  {
    arc(x, y, partWidth, partHeight, 0.0, PI + QUARTER_PI, PIE);
  }
  nextRow();
  
  ////////////////////////////////////////
  
  fill(textColor);
  text("line", x, y - textY);
  fill(fillColor);
  
  noFill();
  stroke(strokeColor);
  strokeWeight(lineWidth);
  {
    beginShape();
      vertex(x, y);
      vertex(x + partWidth, y);
      vertex(x, y + partWidth); 
      vertex(x + partWidth, y + partWidth);
    endShape();
  }
  advanceXY();
  
  ////////////////////////////////////////
  
  fill(textColor);
  text("bezier(4)", x, y - textY);
  fill(fillColor);
  
  noFill();
  stroke(ghostStrokeColor);
  strokeWeight(ghostLineWidth);
  beginShape();
    vertex(x, y);
    vertex(x + partWidth, y);
    vertex(x, y + partWidth); 
    vertex(x + partWidth, y + partWidth);
  endShape();
  stroke(strokeColor);
  strokeWeight(lineWidth);
  
  {
    bezier(
      x, y, 
      x + partWidth, y, 
      x, y + partWidth, 
      x + partWidth, y + partWidth
    );
  }
  advanceXY();
  
  ////////////////////////////////////////
  
  fill(textColor);
  text("curve(4)", x, y - textY);
  fill(fillColor);
  
  noFill();
  stroke(ghostStrokeColor);
  strokeWeight(ghostLineWidth);
  beginShape();
    vertex(x, y);
    vertex(x + partWidth, y);
    vertex(x, y + partWidth); 
    vertex(x + partWidth, y + partWidth);
  endShape();
  stroke(strokeColor);
  strokeWeight(lineWidth);
  
  {
    curve(
      x, y, 
      x + partWidth, y, 
      x, y + partWidth, 
      x + partWidth, y + partWidth
    );
  }
  advanceXY();
  
  ////////////////////////////////////////
  
  fill(textColor);
  text("curve(6)", x, y - textY);
  fill(fillColor);
  
  noFill();
  stroke(ghostStrokeColor);
  strokeWeight(ghostLineWidth);
  beginShape();
    vertex(x, y + partHeight/2.0);
    vertex(x, y);
    vertex(x + partWidth, y);
    vertex(x, y + partWidth); 
    vertex(x + partWidth, y + partWidth);
    vertex(x + partWidth, y + partWidth/2.0);
  endShape();
  stroke(strokeColor);
  strokeWeight(lineWidth);
  
  {
    beginShape();
      curveVertex(x, y + partHeight/2.0);
      curveVertex(x, y);
      curveVertex(x + partWidth, y);
      curveVertex(x, y + partWidth); 
      curveVertex(x + partWidth, y + partWidth);
      curveVertex(x + partWidth, y + partWidth/2.0);
    endShape();
  }
}