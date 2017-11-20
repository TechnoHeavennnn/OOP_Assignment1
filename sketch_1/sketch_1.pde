int x,y;
int cols,rows;
int size = 10;

void setup() {
 size (1200, 675, P3D);
 int w = 1200;
 int h = 675;
 cols = w/size;
 rows = h/size;
}

void draw() {
  background(0);
  
  for (x=0 ; x<cols; x++){
    for (y=0; y<rows; y++){
      stroke(176,196,222);
      noFill();
      rect(x*size,y*size,size,size);
    }
  } 
  
}