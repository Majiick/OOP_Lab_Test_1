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
  drawGrid(10);
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

void drawGrid(int gridLines) {
  //Draw the border around grid.
  stroke(255);
  //line(50, 50, width - 50, 50);
  //line(width - 50, 50, width - 50, height - 50);
  //line(width - 50, height - 50, 50, height - 50);
  //line(50, 50,  50, height - 50);

  float gap = ((800 - 50 - 50) / (float)gridLines);
  print(gap);
  
  //draw x(vertical bars)
  for(int i = 0; i < gridLines + 1; i++) {
    line(gap * i + 50, height - 50, gap * i + 50, 50);
  }
  
  //draw y(vertical bars)
  for(int i = 0; i < gridLines + 1; i++) {
    line(50, gap * i + 50, width - 50, gap * i + 50);
  }
}