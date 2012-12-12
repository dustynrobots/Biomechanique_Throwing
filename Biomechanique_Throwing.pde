/* 
 Visualization of throwing data generated in the Applied Dynamics & Optimization Lab at NYU-Poly
 based on code by Greg Borenstein
 by Dustyn Roberts 2012-12-07
 */

float[][] data;
float scaleToFit = 150;

int currentFrame = 0;
Frame[] frames;  // create an array of Frame objects

boolean joints = true; // if true, spheres will be drawn at joints
boolean lines = true; // if true, lines will connect joints
boolean cones = true; // if true, cones will connect joints

void setup() {
  size(700, 500, P3D);
  frameRate(10);

  getData();
}

void draw() {
  background(255);  // redraw a white background on each loop
  lights();

  position();

  // rotate to see 3D when mousePressed
  if (mousePressed) {
    float rotation = map(mouseX, 0, width, -PI, PI);
    rotateY(rotation);
  }

  if (joints) {
    frames[currentFrame].displayJoints();  // this is where the magic happens
  }

  if (lines) {
    frames[currentFrame].displayLines();
  }

  if (cones) {
    frames[currentFrame].displayCones();
  }

  currentFrame++;  // increment frame each time through draw
  if (currentFrame >= frames.length) {  // when dude falls off screen, start again at left
    currentFrame = 0;
  }
}

void position() {
  // without these next lines, figure looks like it's throwing while standing on the ceiling
  scale(1, 1, -1);  // without this scaling, figure looks left handed (should be right handed)
  translate(0, height, 0);  // move origin to bottom left of screen
  rotateX(PI); // flip y axis up, but z out
  rotateY(PI); // rotates x axis in, z axis to right
  // at this point origin is at bottom left, y is up, z it to right, and x is into screen
  translate(-100, 100, 0);  // translate so we can see the figure clearly
  rotateY(-PI/5); // rotate just a little to see the figure better
}

void getData() {
  // read in the data into a 2D array (matrix) and clean it up 
  //(thanks Che-Wei! http://cwwang.com/2008/02/23/csv-import-for-processing/)

  String[] rows = loadStrings("Throwing.csv");  
  int numColumns = 0;

  // calculate max width of csv file
  for (int i = 0; i < rows.length; i++) {
    String[] columns = split(rows[i], ',');
    if (columns.length > numColumns) {
      numColumns = columns.length;
    }
  }

  // create new matrix based on # of rows and columns in csv file
  data = new float[rows.length][numColumns];

  // parse values into 2D array
  for (int i=0; i < rows.length; i++) {
    float[] temp = new float[rows.length];
    temp = float(split(rows[i], ','));
    for (int j = 0; j < temp.length; j++) {
      data[i][j] = temp[j];
    }
  }

  // multiplying all data by appropriate scale factor 
  for (int i = 1; i < rows.length; i++) {
    for (int j = 2; j < numColumns; j++) {
      data[i][j] = scaleToFit * data[i][j];
    }
  }

  // create frames array of Frame objects where each Frame is a row of data
  frames = new Frame[rows.length];  // initialize the frames array

  for (int i = 0; i < rows.length; i++) {  // initialize each each element of the frames array
    frames[i] = new Frame(data[i]);
  }
  frames = (Frame[]) subset(frames, 1); // get rid of the first rows of labels
}


