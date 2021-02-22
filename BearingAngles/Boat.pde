class Boat{
  float xPos;
  float yPos;
  float hue;
  
  Boat(float _x, float _y, float _h){
    this.xPos = _x;
    this.yPos = _y;
    this.hue = _h;
  }
  
  String display(){
    return "("+this.xPos+","+this.yPos+","+this.hue+")\n";
  }
}
