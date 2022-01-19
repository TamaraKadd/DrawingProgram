//Global Variable
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
Boolean draw=false, Red=false;
float RCBHeight, RCBWidth, RCBY, RCBX, GCBX, GCBY, GCBWidth, GCBHeight, BCBY, BCBX, BCBWidth, BCBHeight;
color colour=#000000;
color green = #42EA21, blue = #2721EA;


void setup() {
  fullScreen();


  population();
  quitButtonSetup();
  textSetup();
  CBSetup();
  GCBSetup();
   BCBSetup();
  //
  rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}

void draw() {


  quitButtonDraw();
  if (draw == true &&  mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) 
  {
    stroke(colour);
    line(mouseX, mouseY, pmouseX, pmouseY);
    stroke(reset);
  }
  //
  //colour buttons:
  fill(red);
  CBDraw();


  
fill(green);
  GCBDraw();
  
  
  fill(blue);
  BCBDraw();
  fill(reset);
  
}//end draw



void mousePressed() {
  quitButtonMousePressed();
  if ( mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {

    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
  }
  
  RCBMousePressed();
  
  GCBMousePressed();
  
  BCBMousePressed();
}//endmousepress

void keyPressed() {
}
