void setup() {
  size(window.innerWidth, window.innerHeight); 
  smooth();
}

void draw() {
  fill(0);
  rect(0,0, width, height);
  fill(255);
  rect(10, 10, width-20, height-20);
  fill(200,0,0);
  noStroke();
  ellipse(width/2, height/2, height*0.6, height*0.6);
}

void setMySize(float w, float h) {
  size(w,h);
}

