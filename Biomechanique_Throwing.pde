/* 
 Visualization of throwing data generated in the Applied Dynamics & Optimization Lab at NYU-Poly
 based on code by Greg Borenstein
 by Dustyn Roberts 2012-12-07
 */

int currentFrame = 0;
Frame[] frames;  // create an array of Frame objects
float rotation = 0;

void setup() {
  size(700, 400, P3D);
  frameRate(10);

  // read in the data and clean it up
  String[] lines = loadStrings("Throwing.csv");
  frames = new Frame[lines.length]; // initialize the frames array
  for (int i = 0; i < lines.length; i++) {  // initialize each each element of the frames array
    frames[i] = new Frame(lines[i]);
  }
  frames = (Frame[]) subset(frames, 1); // get rid of the first rows of labels
}

void draw() {
  background(255);  // redraw a white background on each loop
  lights();

  // without these next 2 lines, dude looks weird
  translate(100, height, 0);
  rotateX(PI);
  //rotateY(PI/2);
  //translate(100, 100, 0);
  
  // rotate to see 3D when mousePressed
  if (mousePressed) {
    rotation = map(mouseX, 0, width, -PI, PI);
    rotateY(rotation);
  }
    scale(100);  // data comes in as pixels, scale to make visible on screen

  frames[currentFrame].draw();  // this is where the magic happens

  currentFrame++;  // increment frame each time through draw
  if (currentFrame >= frames.length) {  // when dude falls off screen, start again at left
    currentFrame = 0;
  }
}

