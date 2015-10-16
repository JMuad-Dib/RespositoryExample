float diam; //float variable "diam"
float x; //float variable "x"
float y; //float variable "y"
float speedX; //float variable "speedX"
float speedY; //float variable "speedY"
float cgr; //float/create variable "cgr" aka "Circle greyscale"
float rx; //float/create variable "rx" aka "rectange x-coordinate"
float ry; //float/create variable "ry" aka "rectange y-coordinate"
float rh; //float/create variable "rh" aka "rectange height"
float rw; //float/create variable "rh" aka "rectange width"
float rspeedx; //float/create variable "rspeedx" aka "rectange speed x"
float rspeedy; //float/create variable "rspeedy" aka "rectange speed y"

void setup() { // this is run once. 
  size(800,600); //define the size of the canvas as 800 pixels by 600 pixels
  diam = 30; //initialize "diam" as 30
  x = random(40,760); //initialize "x" as a random number
  y = random(40,560); //initialize "y" as a random number
  speedX = 5; //initialize "speedX" as 4
  speedY = 5; //initialize "speedX" as 4
  cgr = 125; //initialize "cgr" as 255
  rw = 400; //initialize "rw" as 400
  rh = 300;//initialize "rh" as 300
  rx = 150; //initialize rX as 150
  ry = 150; //initialize rY as 150
  rspeedx = 1; //initialize rspeedx as 1
  rspeedy = 1; //initialize rspeedx as 1
} 

void draw() { // this is run repeatedly. 
  background (0); //set red value of background to equal "bkr", greed value of background to equal "bkg", and blue value of background to equal "bkb"
  fill(255); //color all objects that follow white
  rect(rx,ry,width-300,height-300); //draw a rectangle 150 units from any side of the canvas
  fill(cgr); //color all objects that follow with the value of "cgr"
  ellipse(x,y,diam,diam); //draw a circle at ("x","y") with a diameter of "diam"

  x = x + speedX; //set "x" to change/move at a rate of "speedX"
  y = y + speedY; //set "y" to change/move at a rate of "speedY"

  rx = rx + rspeedx;
  ry = ry + rspeedy;
  
  if(rx + rw >= width){ //if the edge of the rectangle is at or past the right edge of the canvas
    rspeedx = rspeedx * -1; //change direction of "rspeedX" and, therefore, deflect the rectangle's motion
  }else if(rx <= 0){ //if the edge of the circle is at or past the left edge of the canvas
    rspeedx = rspeedx * -1; //change direction of "rspeedX" and, therefore, deflect the rectangle's motion
  }else if(ry + rh >= height - 15){ //if the edge of the rectangle is at or past the bottom edge of the canvas
    rspeedy = rspeedy * -1;//change direction of "rspeedy" and, therefore, deflect the rectangle's motion
  }else if(ry <= 0){ //if the edge of the rectangle is at or past the top edge of the canvas
    rspeedy = rspeedy * -1; //change direction of "rspeedy" and, therefore, deflect the rectangle's motion
  }

  if(x >= width - 15){ //if the edge of the circle is at or past the right edge of the canvas
    speedX = speedX * -1; //change direction of "speedX" and, therefore, deflect the ball's motion
  }else if(x <= 15){ //if the edge of the circle is at or past the left edge of the canvas
    speedX = speedX * -1; //change direction of "speedX" and, therefore, deflect the ball's motion
  }else if(y >= height - 15){ //if the edge of the circle is at or past the bottom edge of the canvas
    speedY = speedY * -1; //change direction of "speedY" and, therefore, deflect the ball's motion
  }else if(y <= 15){ //if the edge of the circle is at or past the top edge of the canvas
    speedY = speedY * -1; //change direction of "speedY" and, therefore, deflect the ball's motion
  }
  
  if(x <= rx){ //if the circle is to the left of the rectangle
    cgr = 255;
  }else if(x >= rx + rw){ //if the circle is to the right of the rectangle
    cgr = 255;
  }else if(y <= ry){ //if the circle is above the rectangle
    cgr = 255;
  }else if(y >= ry + rh){ //if the circle is below the rectangle
    cgr = 255;
  }else{ //if the circle is inside the rectangle
    cgr = 0;
  }
}