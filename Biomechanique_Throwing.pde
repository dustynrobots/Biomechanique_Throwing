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

  // without these next lines, figure looks like it's throwing while standing on the ceiling
  scale(1, 1, -1);  // without this scaling, figure looks left handed (should be right handed)
  translate(0, height, 0);  // move origin to bottom left of screen
  rotateX(PI); // flip y axis up, but z out
  rotateY(PI); // rotates x axis in, z axis to right
  // at this point origin is at bottom left, y is up, z it to right, and x is into screen
  translate(-100, 100, 0);  // translate so we can see the figure clearly
  rotateY(-PI/5); // rotate just a little to see the figure better

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

