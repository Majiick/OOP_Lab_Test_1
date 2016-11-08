class Star {
  boolean habitable;
  String name;
  float distance;
  public Coordinate coordinates;
  float size;
  
  Star(TableRow tr) {
    habitable = tr.getInt("Hab?") == 1 ? true : false;
    name = tr.getString("Display Name");
    distance = tr.getFloat("Distance");
    size = tr.getFloat("AbsMag");
    
    coordinates = new Coordinate();
    coordinates.x = tr.getFloat("Xg");
    coordinates.y = tr.getFloat("Yg");
    coordinates.z = tr.getFloat("Zg");
  }
  
  String toString() {
    return name; //Make this more verbose later.
  }
}