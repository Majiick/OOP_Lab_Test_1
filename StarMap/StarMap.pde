//OOP Test 1 8/11/2016. My prediction is that Trump will win.
//C15437072
ArrayList<Star> stars = new ArrayList<Star>();

void setup() {
  size(800, 800);
  loadData("/data/HabHYG15ly.csv");
  printStars();
}


void draw() {
  
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