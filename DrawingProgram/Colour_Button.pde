
void RCBMousePressed() {

  if (mouseX>RCBX && mouseX<RCBX+RCBWidth && mouseY>RCBY && mouseY<RCBY+RCBHeight) {
    colour = red;
  }

}
//


//
void GCBMousePressed() {

  
  if (mouseX>GCBX && mouseX<GCBX+GCBWidth && mouseY>GCBY && mouseY<GCBY+GCBHeight) {
    colour = green;
  }
}

void BCBMousePressed() {

  
  if (mouseX>BCBX && mouseX<BCBX+BCBWidth && mouseY>BCBY && mouseY<BCBY+BCBHeight) {
    colour = blue;
  }
}
