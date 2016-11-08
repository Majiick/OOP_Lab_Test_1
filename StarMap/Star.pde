class Star {
  boolean habitable;
  String displayName;
  float distance;
  Coordinate coordinates;
  float size;
  
  Star(TableRow tr) {
    habitable = tr.getInt("Hab?") == 1 ? true : false;
    displayName = tr.getString("Display Name");
    distance = tr.getFloat("Distance");
    size = tr.getFloat("AbsMag");
    
    coordinates = new Coordinate();
    coordinates.x = tr.getFloat("Xg");
    coordinates.x = tr.getFloat("Yg");
    coordinates.x = tr.getFloat("Zg");
  }
  
  String toString() {
    return displayName;
  }
}