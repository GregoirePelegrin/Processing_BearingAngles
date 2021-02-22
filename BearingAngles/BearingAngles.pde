ArrayList<Boat> boats;
Boat mainBoat;
DisplayBearing db;
DisplayNormal dn;
int MOVE_DISTANCE;

void setup(){
  size(1000, 600);
  frameRate(30);
  background(0);
  
  boats = new ArrayList<Boat>();
  mainBoat = new Boat(width/4, height/2, 255);
  db = new DisplayBearing(width/2, height, width/2, 0, boats, mainBoat);
  dn = new DisplayNormal(width/2, height, 0, 0, boats, mainBoat);
  MOVE_DISTANCE = 5;
  
  populate(boats);
}

void draw(){
  background(0);
  strokeWeight(3);
  stroke(255);
  line(width/2, 0, width/2, height);
  db.update();
  dn.update();
  db.display();
  dn.display();
}

void keyPressed(){
  if(key == CODED){
    if(keyCode == UP){
      mainBoat.yPos -= MOVE_DISTANCE;
    }else if(keyCode == DOWN){
      mainBoat.yPos += MOVE_DISTANCE;
    }else if(keyCode == LEFT){
      mainBoat.xPos -= MOVE_DISTANCE;
    }else if(keyCode == RIGHT){
      mainBoat.xPos += MOVE_DISTANCE;
    }
  }
}

void populate(ArrayList<Boat> b){
  b.add(new Boat(20, 20, 20));
  b.add(new Boat(100, 165, 50));
}
