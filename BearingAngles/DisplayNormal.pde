class DisplayNormal{
  ArrayList<Boat> boats;
  Boat mainBoat;
  int dnHeight;
  int dnWidth;
  int x;
  int y;
  
  DisplayNormal(int _w, int _h, int _x, int _y, ArrayList<Boat> _b, Boat _bo){
    this.boats = _b;
    this.dnWidth = _w;
    this.dnHeight = _h;
    this.x = _x;
    this.y = _y;
    this.mainBoat = _bo;
  }
  
  void display(){
    colorMode(HSB, 255);
    noStroke();
    for(Boat b : this.boats){
      fill(b.hue, 255, 255);
      circle(b.xPos, b.yPos, 20);
    }
    fill(this.mainBoat.hue, 255, 255);
    circle(this.mainBoat.xPos, this.mainBoat.yPos, 20);
  }
  
  void update(){
    
  }
}
