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
  stroke(176,196,222);
  noFill();
  
  translate(width/2, height/2);
  rotateX(PI/3);
  
  translate(-600, -675/2);
  for (y=0; y<rows; y++){
    beginShape(TRIANGLE_STRIP);
    for (x=0 ; x<cols; x++){
    vertex(x*size, y*size);
    vertex(x*size, (y+1)*size);
    }
    endShape();
  } 
  
}