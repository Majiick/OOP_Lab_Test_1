//OOP Test 1 8/11/2016. My prediction is that Trump will win.
//C15437072
ArrayList<Star> stars = new ArrayList<Star>();


void setup() {
  size(800, 800);
  loadData("/data/HabHYG15ly.csv");
  printStars();
}


void draw() {
  background(0);
  drawGrid(10, 50);
  drawStars();
}


void loadData(String fileName) {
  Table t = loadTable(fileName, "header");
  
  for(TableRow tr : t.rows()) {
     stars.add(new Star(tr));
  }
}


void printStars() {
  for (Star star : stars) {
    println(star);
  }
}

void drawCross(Coordinate c, float size) {
  stroke(255,255,0);
  
  //horizontal stroke
  line(c.x - size/2, c.y, c.x + size/2, c.y);
  
  //vertical stroke
  line(c.x, c.y - size/2, c.x, c.y + size/2);
}

void drawCircle(Coordinate c, float size) {
  stroke(255, 0, 0);
  
  noFill();
  ellipse(c.x, c.y, size, size);
}

void drawLabel(Coordinate c, Coordinate offset, String text) {
  text(text, c.x + offset.x, c.y + offset.y);
}

void drawStars() {
  for(Star star : stars) {
    Coordinate screenCoordinate = star.coordinates.toGraphCoordinates(50.0f);
    
    drawCircle(screenCoordinate, star.size);
    drawCross(screenCoordinate, 5);
    drawLabel(screenCoordinate, new Coordinate(10, -5), star.name);
  }
}

void drawGrid(int gridLines, float border) {
  //Draw the border around grid.
  stroke(255, 0, 255);

  float gap = ((height - border*2) / (float)gridLines);
  
  //draw x(vertical bars)
  for(int i = 0; i < gridLines + 1; i++) {
    line(gap * i + border, height - border, gap * i + border, border);
  }
  
  //draw y(horizontal bars)
  for(int i = 0; i < gridLines + 1; i++) {
    line(border, gap * i + border, width - border, gap * i + border);
  }
  
  drawLabels(gridLines, border);
}


void drawLabels(int gridLines, float border) {
  float gap = ((800 - border*2) / (float)gridLines);
  
  //draw x(vertical) labels.
  int label = -5;
  for(int i = 0; i < gridLines + 1; i++) {
    text(label++, 10, gap * i + border);
  }
  
  //draw y(horizontal) labels.
  label = -5;
  for(int i = 0; i < gridLines + 1; i++) {
    text(label++, gap * i + border, 10);
  }
}