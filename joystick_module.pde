import processing.serial.*;
Serial myPort;

int x = 0;
int y = 0;
int sw = 1;

int r = 70;
int col;
int h =0;

void setup() {
  size(1000, 1000);
  myPort = new Serial(this, Serial.list()[0], 9600);
  myPort.bufferUntil('\n');
  colorMode(HSB);
  smooth();
  background(255);
}

void draw() {

  stroke(0);
  strokeWeight(5);
  
  if (sw == 1 ) {
    fill(h, 255, 255);
  } else {    
    fill(h/2, 255, 255);
  }
  
  h++;
  if (h > 254) h =0;
  
  circle(x, y, r);

}

void serialEvent(Serial myPort) {
  String myString = myPort.readStringUntil('\n');
  myString = trim(myString);
  
  int values[] = int(split(myString, ','));
  if (values.length > 0) {
    x = values[0];
    y = values[1];    
    sw = values[2];
    
    x = (int)map(x, 0, 1043, r, width - r);
    y = (int)map(y, 0, 1043, r, height - r);
    println("x = " + x, "y = " + y, "sw = " + sw);
  }
}
