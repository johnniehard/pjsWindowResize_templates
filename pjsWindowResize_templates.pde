int num = 20;
float len;
int randOffset = 1;

void setup() {
  size(window.innerWidth, window.innerHeight); 
  noCursor();
  len = (height/num);
  strokeWeight(5);
}

void draw() {
  background(0);
  stroke(255, 100);
  PVector mouse = new PVector(mouseX, mouseY);
  num = int(width/100);

  for (int y = height/num; y < height; y += height/num) {
    for (int x = width/num; x < width-(width/num); x += width/num) {
      
      PVector loc = new PVector(x, y);
      PVector dir = PVector.sub(mouse, loc);
      
      pushMatrix();
      
      translate(loc.x, loc.y);
      rotate(dir.heading());
      line(0, 0, len, 0);
      
      popMatrix();
    }
  }
}

void setMySize(float w, float h) {
  size(w,h);
}

