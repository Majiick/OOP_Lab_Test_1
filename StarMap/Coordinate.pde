class Coordinate { //There's probably a built-in for this, but can't find it using Google ):
  public float x;
  public float y;
  public float z;
  
  Coordinate(float x, float y, float z) {
    this.x = x;
    this.y = y; 
    this.z = z;
  }
  
  Coordinate(float x, float y) {
    this(x, y, 0);
  }
  
  Coordinate() {
    
  }
  
  public Coordinate toGraphCoordinates(float marginSize) {
    Coordinate c = new Coordinate();
    c.x = map(this.x, -5, 5, marginSize, height - marginSize);
    c.y = map(this.y, -5, 5, marginSize, height - marginSize);
    c.z = map(this.z, -5, 5, marginSize, height - marginSize);
    
    return c;
  }
  
  public Coordinate toScreenCoordinates() {
    Coordinate c = new Coordinate();
    c.x = map(this.x, -5, 5, 0, height);
    c.y = map(this.y, -5, 5, 0, height);
    c.z = map(this.z, -5, 5, 0, height);
    
    return c;
  }
}