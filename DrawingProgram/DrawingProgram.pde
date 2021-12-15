//Global Variable
float drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight, drawingDiameter;
Boolean draw=false;





void setup() {
  fullScreen();


population();
 quitButtonSetup();
  textSetup();

    //
    rect(drawingSurfaceX, drawingSurfaceY, drawingSurfaceWidth, drawingSurfaceHeight);
}

void draw() {
 quitButtonDraw();
  if (draw == true &&  mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight) 
  {
    line(mouseX, mouseY, pmouseX, pmouseY);
  }
}

void mousePressed() {
quitButtonMousePressed();
  if ( mouseX>drawingSurfaceX && mouseX<drawingSurfaceX+drawingSurfaceWidth && mouseY>drawingSurfaceY && mouseY<drawingSurfaceY+drawingSurfaceHeight ) {

    if (draw == false) {
      draw = true;
    } else {
      draw = false;
    }
  }
}

void keyPressed() {
}
