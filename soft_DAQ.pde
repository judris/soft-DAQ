// Need G4P library
import g4p_controls.*;
import java.awt.event.*;
import processing.serial.*;
import cc.arduino.*;

Serial myPort; 
Serial myPort2;
Serial myPort3;
Serial myPort4;

Electropherogram myElectropherogram;
Axes2D myAxes2D;

public void setup(){
  size(1000, 480, JAVA2D);
  initializeClasses();
  myAxes2D.run();
//  createGUI();
  customGUI();
  // Place your setup code here
 ArrayInit(); 
 frame.setResizable(true);
 frame.addComponentListener(new ComponentAdapter() {
  public void componentResized(ComponentEvent e) {
    if(e.getSource()==frame) {
    redrawAxis = true;
    redraw();
    }
  }
});
  println(Serial.list());
//  println(Arduino.list());
    frameRate(24);
}

public void initializeClasses(){
  myElectropherogram = new Electropherogram(XstartPos, YstartPos, scalingFactor); //int _Xstart, int _Ystart, float _xPos, Float _yPos, float _xPrevious, Float _yPrevious
  myAxes2D = new Axes2D(XstartPos, YstartPos, 10, 5, 2); //int _Xposition, int _Yposition, int _XtickNumber, int _YtickNumber, int _LineWidth
  myAxes2D.run();
}

public void draw(){
if (redrawAxis == true){
  initializeClasses();
  myElectropherogram.showPreserved();
  redrawAxis = false;
}
}


