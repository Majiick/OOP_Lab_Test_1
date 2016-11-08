/* COORDINATE CLASS TO STORE 3 CARTESIAN COORDINATES.*/

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
  
  //Converts this coordinate from parsec units to pixel screen units.
  public Coordinate toGraphCoordinates(float marginSize) {
    Coordinate c = new Coordinate();
    c.x = map(this.x, -5, 5, marginSize, height - marginSize);
    c.y = map(this.y, -5, 5, marginSize, height - marginSize);
    c.z = map(this.z, -5, 5, marginSize, height - marginSize);
    
    return c;
  }
  
  //I'm really not proud of the method below ):
  //Converts the current coordinate from parsec units to screen pixel units.
  //I just realized this might be the same as toGraphCoordinates and I'm just making things more complicated. No time to test and check!
  public Coordinate toScreenCoordinates(float marginSizeInParsecs) {
    Coordinate c = new Coordinate();
    float rangeParsecs = 5.0f + marginSizeInParsecs;
    
    c.x = map(this.x, -rangeParsecs, rangeParsecs, 0, height);
    c.y = map(this.y, -rangeParsecs, rangeParsecs, 0, height);
    c.z = map(this.z, -rangeParsecs, rangeParsecs, 0, height);
    
    return c;
  }
}