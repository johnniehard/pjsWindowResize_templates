// @DHDPIC

/* @pjs preload="img/dhd_joy-02.jpg,img/mob_maze.png"; */

int gridSize;
int gridMin = 20;
int gridMax = 200;
int gridInc = 1;

PImage img;
Boolean imgLoaded = false;

Boolean animation = true;

Boolean mobile = false;
PImage imgMob;

void setup() {
  //
  size(window.innerWidth, window.innerHeight);
  //size(1280, 800);
  background(0);
  smooth();
  stroke(255);
  strokeWeight(1);
  noFill();
  //
  imgMob = requestImage("img/mob_maze.png");
  img = requestImage("img/dhd_joy-02.jpg");
  img.loadPixels();
  //
  gridSize = gridMax;
  //
  if(width < 480) {
    mobile = true;
  }
}

void draw() {
if(mobile) {
    image(imgMob, width/2 - imgMob.width/2, height/2 - imgMob.height/2);
  } else {
  if (img.width == 0) {
  } 
  else {
    if (imgLoaded == false) {
      img.resize(window.innerWidth,0);
      imgLoaded = true;
    }
    //
    background(0);
    stroke(255);
    randomSeed(0);
    // FOR NO PULSING JUST REDUCTION
    if (gridSize > gridMin) {
      gridSize -= gridInc;
    } else {
      console.log("animation finished");
      animation = false;
      noLoop();
    }
    loopCentre();
    /*
    // to centre logo
    float offsetX= (width/2) - (img.width/2);
    float offsetY = (height/2) - (img.height/2);
    //
    for (int y=0; y<height/2; y+=gridSize) {
      for (int x=0; x<width/2; x+=gridSize) {
        //
        int g = img.get((int) (x-offsetX), (int) (y-offsetY));
        //
        float b = brightness(g)/10;
        if (b<1) { 
          b = 1;
        }
        strokeWeight(b);
        //
        int dir = (int) random(0, 2);
        if (dir == 0) {
          line(x, y+gridSize, x+gridSize, y);
        }
        if (dir == 1) {
          line(x, y, x+gridSize, y+gridSize);
        }
      }
    }*/
  }
  }
}

void loopCentre() {
  //
  float offsetX= (width/2) - (img.width/2);
  float offsetY = (height/2) - (img.height/2);
  //
  for (int y=height/2; y>-gridSize; y-=gridSize) {
    for (int x=width/2; x>-gridSize; x-=gridSize) {
      int g = img.get((int) (x-offsetX), (int) (y-offsetY));
      float b = brightness(g)/10;
      if (b<1) { 
        b = 1;
      }
      strokeWeight(b);
      //
      int dir = (int) random(0, 2);
      if (dir == 0) {
        line(x, y+gridSize, x+gridSize, y);
      }
      if (dir == 1) {
        line(x, y, x+gridSize, y+gridSize);
      }
    }
  }
  //
  for (int y=height/2; y>-gridSize; y-=gridSize) {
    for (int x=(width/2)+gridSize; x<width; x+=gridSize) {
      int g = img.get((int) (x-offsetX), (int) (y-offsetY));
      float b = brightness(g)/10;
      if (b<1) { 
        b = 1;
      }
      strokeWeight(b);
      //
      int dir = (int) random(0, 2);
      if (dir == 0) {
        line(x, y+gridSize, x+gridSize, y);
      }
      if (dir == 1) {
        line(x, y, x+gridSize, y+gridSize);
      }
    }
  }
  //
  for (int y=(height/2)+gridSize; y<height; y+=gridSize) {
    for (int x=(width/2)+gridSize; x<width; x+=gridSize) {
      int g = img.get((int) (x-offsetX), (int) (y-offsetY));
      float b = brightness(g)/10;
      if (b<1) { 
        b = 1;
      }
      strokeWeight(b);
      //
      int dir = (int) random(0, 2);
      if (dir == 0) {
        line(x, y+gridSize, x+gridSize, y);
      }
      if (dir == 1) {
        line(x, y, x+gridSize, y+gridSize);
      }
    }
  }
  //
  for (int y=(height/2)+gridSize; y<height; y+=gridSize) {
    for (int x=width/2; x>-gridSize; x-=gridSize) {
      int g = img.get((int) (x-offsetX), (int) (y-offsetY));
      float b = brightness(g)/10;
      if (b<1) { 
        b = 1;
      }
      strokeWeight(b);
      //
      int dir = (int) random(0, 2);
      if (dir == 0) {
        line(x, y+gridSize, x+gridSize, y);
      }
      if (dir == 1) {
        line(x, y, x+gridSize, y+gridSize);
      }
    }
  }
}

void setMySize(float w, float h) {
  //
  if(w < 480) {
    mobile = true;
  } else {
    mobile = false;
  }
  //
  size(w,h);
  //
  img.resize(w,0);
  //
  if(!animation) {
    //animation = true;
    //gridSize = gridMax;
    //loop();
  }
  //
  redraw();
}

