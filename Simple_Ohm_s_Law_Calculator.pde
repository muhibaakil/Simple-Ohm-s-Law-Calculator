float voltage;    // float var. for volts
float current;    // float var. for current
float resistance; // float var. for resistance

void setup() {
  size(400, 170);    // size of screen
  textSize(16);      // text size set to 16
  textAlign(CENTER, CENTER);   // put text in the center of the screen
  println("Enter any two values to calculate the third.");    // print this to screen
}

void draw() {
  background(220);   // background colour set to grey
  fill(0);       // text colour det to black 
  text("Enter voltage (V): " + voltage, 100, 50);   // display text on screen at this location
  text("Enter current (I): " + current, 100, 80);   // display text on screen at this location
  text("Enter resistance (R): " + resistance, 100, 110);   // display text on screen at this location

  if (voltage != 0 && current != 0) {    // if both volts and current not = 0
    resistance = voltage / current;      // calculate resistance
    text("Resistance (R): " + resistance, 300, 110);   // display the answer at this locaton
  } else if (voltage != 0 && resistance != 0) {   // if both volts and resistance not = 0
    current = voltage / resistance;      // calculate current
    text("Current (I): " + current, 300, 80);   // dislay the answer
  } else if (current != 0 && resistance != 0) {   // if both current and resistance not = 0
    voltage = current * resistance;       // calculate voltage 
    text("Voltage (V): " + voltage, 300, 50);    // display the answer
  }
}

void keyPressed() {
  if (keyCode == ENTER) {    // if ENTER is pressed on keyboard 
    if (voltage == 0) {     // if volts has not been defined yet 
      voltage = float(keyboardInput);  // set the volt value to the number inputted
    } else if (current == 0) {    // if current has not been defined yet 
      current = float(keyboardInput);    // set the current value to the number inputted
    } else if (resistance == 0) {     // if resistance has not been defined yet 
      resistance = float(keyboardInput);   // set the resistance value to the number inputted
    }
    keyboardInput = "";    // clear input
  } else if (keyCode == BACKSPACE) {  // if BACKSPACE is pressed
    keyboardInput = keyboardInput.substring(0, max(0, keyboardInput.length()-1));  // remove the previous character that was inputted
  } else if (key >= '0' && key <= '9') {   // if numerical value is inputted 
    keyboardInput += key; // add the key to the input string
  }
}

String keyboardInput = "";   // empty string to store the input value 

void displayKeyboardInput() {
  fill(0);
  text(keyboardInput, 100, 140);   // display the input string on screen
}
