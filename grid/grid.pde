int x,y;
int i,j;
int w = 1000;
int h = 1000;
int cols,rows;
int size = 15;

float[][] terrain;

void setup() {
 size (1200, 675, P3D);
 cols = w/size;
 rows = h/size;
 terrain = new float[cols][rows];
   for (y=0; y<rows-1; y++){
     for (x=0 ; x<cols; x++){
       terrain[x][y] = map(noise(x,y), 0, 1, -20, 20);
     }
   }
}

void draw() {
  background(0);
  stroke(176,196,222);
  noFill();
  translate(width/2, height/2);
  
  rotateX(PI/3);
  
  translate(-w/2, -h/2);
  
  for (y=0; y<rows-1; y++){
    beginShape(TRIANGLE_STRIP);
    for (x=0 ; x<cols; x++){
      vertex(x*size, y*size, terrain[x][y]);
      vertex(x*size, (y+1)*size, terrain[x][y+1]);
    }
    endShape(CLOSE);
  } 
  
}