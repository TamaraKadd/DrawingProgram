//Global Variables
PFont font; //Font Type
int initialSize = 25; //Initial Size
//Black Ink, see QuitButton Global Variables
color white=#FFFFFF; //reset INK

void textSetup() {
  //println("Start of Console");
  /*Fonts from OS
   String[] fontList = PFont.list(); //To list all fonts available on system
   printArray(fontList); //For listing all possible fonts to choose, then createFont
   */
  font = createFont ("Arial", initialSize); //Verify font exists
  //Tools / Create Font / Find Font / Do Not Press "OK", known bug
  //Layout with a rect(); Variables copied to text();
  rect(quitButtonX, quitButtonY, quitButtonWidth, quitButtonHeight);
}//End textSetup()

//Code to be repeated instead of copied and pasted
void textCode(String string, int size, float rectX, float rectY, float rectWidth, float rectHeight) {
  fill(black); //Ink, hexidecimal copied from Color Selector
  textAlign (CENTER, CENTER); //Align X&Y, see Processing.org / Reference
  //Values: [LEFT | CENTER | RIGHT] & [TOP | CENTER | BOTTOM | BASELINE]
  textFont(font, size); //Change the number until it fits, largest font size
  //textFont() has option to combine font declaration with textSize()
  //Drawing Text
  text(string, rectX, rectY, rectWidth, rectHeight);
  fill(white); //reset
}//End textCode()
