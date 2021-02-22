class DisplayBearing{
  int MEMORY_LIMIT = 200;
  ArrayList<Boat> boats;
  Boat mainBoat;
  int dbHeight;
  int dbWidth;
  int x;
  int y;
  
  DisplayBearing(int _w, int _h, int _x, int _y, ArrayList<Boat> _b, Boat _bo){
    this.boats = _b;
    this.dbHeight = _h;
    this.dbWidth = _w;
    this.x = _x;
    this.y = _y;
    this.mainBoat = _bo;
  }
  
  void display(){
    /* Between (x, y) and (x+dbWidth, y+dbHeight)*/
    // 1: Afficher les axes tous les 10 degrés
    colorMode(RGB, 255);
    strokeWeight(1);
    stroke(125, 50);
    for(int i=0; i<37; i++){
      int currWidth = 15 + i*((this.dbWidth-30)/36);
      line(this.x + currWidth, this.y + 0, this.x + currWidth, this.y + this.dbHeight);
    }
    // 2: Axe temporel vertical, présent à y == 0
  }
  
  void update(){
    
  }
}
