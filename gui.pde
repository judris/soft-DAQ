/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

synchronized public void Setupwin_draw1(GWinApplet appc, GWinData data) { //_CODE_:window1:457692:
  appc.background(230);
} //_CODE_:window1:457692:

public void OpenSerialbutton1_click1(GButton source, GEvent event) { //_CODE_:OpenSerialbutton:332947:
//  println("OpenSerialbutton - GButton event occured " + System.currentTimeMillis()%10000000 );
if (nodevice == false){
  serialPortSelect();
  timingfunction();
  initializeClasses();
}
} //_CODE_:OpenSerialbutton:332947:

public void Serial_PortsdropList1_click1(GDropList source, GEvent event) { //_CODE_:Serial_Ports:605734:
  println("dropList1 - GDropList event occured " + System.currentTimeMillis()%10000000 );
  println(Serial_Ports.getSelectedIndex());
  println(Serial_Ports.getSelectedText());
} //_CODE_:Serial_Ports:605734:

public void StopSerialbutton1_click3(GButton source, GEvent event) { //_CODE_:StopSerial:770184:
  println("StopSerial - GButton event occured " + System.currentTimeMillis()%10000000 );
  myPort.stop();
} //_CODE_:StopSerial:770184:

public void Serial_Ports2_click1(GDropList source, GEvent event) { //_CODE_:Serial_Ports2:757299:
  println("Serial_Ports2 - GDropList event occured " + System.currentTimeMillis()%10000000 );
} //_CODE_:Serial_Ports2:757299:

public void OpenSerialPort2_click3(GButton source, GEvent event) { //_CODE_:OpenSerialPort2button1:712908:
  println("OpenSerialPort2button1 - GButton event occured " + System.currentTimeMillis()%10000000 );
  serialPortSelect2();
  initializeClasses();
} //_CODE_:OpenSerialPort2button1:712908:

public void StopSerialPort2_click1(GButton source, GEvent event) { //_CODE_:BLUE_SCHEME:980770:
  println("StopSerialPort2button2 - GButton event occured " + System.currentTimeMillis()%10000000 );
  myPort2.stop();
} //_CODE_:BLUE_SCHEME:980770:

public void BaudRate_click1(GDropList source, GEvent event) { //_CODE_:BaudRate:868333:
//  println("Serial_Ports4 - GDropList event occured " + System.currentTimeMillis()%10000000 );
BaudrateNumber = int(BaudRate.getSelectedText());
println(BaudrateNumber);
} //_CODE_:BaudRate:868333:

public void Phrasetextfield1_change1(GTextField source, GEvent event) { //_CODE_:Phrasetextfield1:641956:
//  println("Phrasetextfield1 - GTextField event occured " + System.currentTimeMillis()%10000000 );
//println(StartPass);
} //_CODE_:Phrasetextfield1:641956:

public void OKPhrasebutton1_click2(GButton source, GEvent event) { //_CODE_:OKPhrasebutton1:955155:
//  println("OKPhrasebutton1 - GButton event occured " + System.currentTimeMillis()%10000000 );
StartPass = Phrasetextfield1.getText();
//println(StartPass);
} //_CODE_:OKPhrasebutton1:955155:

synchronized public void win_draw2(GWinApplet appc, GWinData data) { //_CODE_:window2:639670:
  appc.background(230);
} //_CODE_:window2:639670:

public void ZoomInbutton1_click1(GButton source, GEvent event) { //_CODE_:ZoomIn:293652:
//  println("button1 - GButton event occured " + System.currentTimeMillis()%10000000 );
  ZoomIn();
  initializeClasses();
  myElectropherogram.showPreserved();
} //_CODE_:ZoomIn:293652:

public void ZoomOutbutton2_click1(GButton source, GEvent event) { //_CODE_:ZoomOut:547055:
//  println("button2 - GButton event occured " + System.currentTimeMillis()%10000000 );
//  println(yScaleMaximum);
  ZoomOut();
  initializeClasses();
  myElectropherogram.showPreserved();
} //_CODE_:ZoomOut:547055:

public void TimePlusbutton3_click1(GButton source, GEvent event) { //_CODE_:TimePlus:301917:
//  println("button3 - GButton event occured " + System.currentTimeMillis()%10000000 );
  TimePlus();
  initializeClasses();
  myElectropherogram.showPreserved();
} //_CODE_:TimePlus:301917:

public void TimeMinusbutton4_click1(GButton source, GEvent event) { //_CODE_:TimeMinus:450192:
//  println("button4 - GButton event occured " + System.currentTimeMillis()%10000000 );
  TimeMinus();
  initializeClasses();
  myElectropherogram.showPreserved();
} //_CODE_:TimeMinus:450192:

public void RUNbutton5_click1(GButton source, GEvent event) { //_CODE_:RUN:205394:
//  println("button5 - GButton event occured " + System.currentTimeMillis()%10000000 );
StartTheAnalysis();

} //_CODE_:RUN:205394:

public void STOPbutton6_click1(GButton source, GEvent event) { //_CODE_:STOP:563742:
//  println("button6 - GButton event occured " + System.currentTimeMillis()%10000000 );
startflag = false;
closeDAQFile();
} //_CODE_:STOP:563742:

public void button1_click1(GButton source, GEvent event) { //_CODE_:OffsetUp:500480:
//  println("OffsetUp - GButton event occured " + System.currentTimeMillis()%10000000 );
  OffsetPlus();
    initializeClasses();
  myElectropherogram.showPreserved();
} //_CODE_:OffsetUp:500480:

public void OffsetDownbutton1_click1(GButton source, GEvent event) { //_CODE_:OffsetDown:201743:
//  println("OffsetDown - GButton event occured " + System.currentTimeMillis()%10000000 );
  OffsetMinus();
  initializeClasses();
  myElectropherogram.showPreserved();
} //_CODE_:OffsetDown:201743:

public void Timingslider1_change1(GSlider source, GEvent event) { //_CODE_:Timingslider1:686558:
//  println("slider1 - GSlider event occured " + System.currentTimeMillis()%10000000 );
  TimingOffsetSlider = Timingslider1.getValueF();
  initializeClasses();
  myElectropherogram.showPreserved();
} //_CODE_:Timingslider1:686558:

public void Offsetslider2_change1(GSlider source, GEvent event) { //_CODE_:Offsetslider2:317894:
//  println("slider2 - GSlider event occured " + System.currentTimeMillis()%10000000 );
  OffsetSliderVal = Offsetslider2.getValueF();
  initializeClasses();
  myElectropherogram.showPreserved();
} //_CODE_:Offsetslider2:317894:

public void Settingsbutton1_click2(GButton source, GEvent event) { //_CODE_:Settingsbutton1:657155:
//  println("Settingsbutton1 - GButton event occured " + System.currentTimeMillis()%10000000 );
openSettings();
} //_CODE_:Settingsbutton1:657155:

public void EXITbutton1_click2(GButton source, GEvent event) { //_CODE_:EXITbutton1:287530:
//  println("EXITbutton1 - GButton event occured " + System.currentTimeMillis()%10000000 );
if (startflag == true)
closeDAQFile();
exit();
} //_CODE_:EXITbutton1:287530:

public void ChoosePathbutton1_click2(GButton source, GEvent event) { //_CODE_:ChoosePathbutton1:390093:
  //println("ChoosePathbutton1 - GButton event occured " + System.currentTimeMillis()%10000000 );
  selectFolder("Select folder", "folderSelected");
} //_CODE_:ChoosePathbutton1:390093:

public void AnalysisUP_click2(GButton source, GEvent event) { //_CODE_:AnalysisUPbutton1:537956:
//  println("AnalysisUPbutton1 - GButton event occured " + System.currentTimeMillis()%10000000 );
AnalysisTimeUP();
} //_CODE_:AnalysisUPbutton1:537956:

public void AnalysisDown_click2(GButton source, GEvent event) { //_CODE_:AnalysisDownbutton1:222072:
//  println("AnalysisDownbutton1 - GButton event occured " + System.currentTimeMillis()%10000000 );
AnalysisTimeDown();
} //_CODE_:AnalysisDownbutton1:222072:

public void Analysisslider1_change1(GSlider source, GEvent event) { //_CODE_:Analysisslider1:262109:
//  println("Analysisslider1 - GSlider event occured " + System.currentTimeMillis()%10000000 );
SliderAnTime = Analysisslider1.getValueF();
} //_CODE_:Analysisslider1:262109:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setCursor(ARROW);
  if(frame != null)
    frame.setTitle("Sketch Window");
  window1 = new GWindow(this, "Serial Port Setup", 400, 100, 685, 300, false, JAVA2D);
  window1.setActionOnClose(G4P.CLOSE_WINDOW);
  window1.addDrawHandler(this, "Setupwin_draw1");
  OpenSerialbutton = new GButton(window1.papplet, 5, 5, 80, 30);
  OpenSerialbutton.setText("Open Serial Port1");
  OpenSerialbutton.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  OpenSerialbutton.addEventHandler(this, "OpenSerialbutton1_click1");
  Serial_Ports = new GDropList(window1.papplet, 5, 40, 165, 220, 10);
  Serial_Ports.setItems(loadStrings("list_605734"), 0);
  Serial_Ports.addEventHandler(this, "Serial_PortsdropList1_click1");
  StopSerial = new GButton(window1.papplet, 90, 5, 80, 30);
  StopSerial.setText("STOP Serial Port");
  StopSerial.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  StopSerial.addEventHandler(this, "StopSerialbutton1_click3");
  Serial_Ports2 = new GDropList(window1.papplet, 175, 40, 165, 220, 10);
  Serial_Ports2.setItems(loadStrings("list_757299"), 0);
  Serial_Ports2.addEventHandler(this, "Serial_Ports2_click1");
  OpenSerialPort2button1 = new GButton(window1.papplet, 175, 5, 80, 30);
  OpenSerialPort2button1.setText("Open Serial Port2");
  OpenSerialPort2button1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  OpenSerialPort2button1.addEventHandler(this, "OpenSerialPort2_click3");
  BLUE_SCHEME = new GButton(window1.papplet, 260, 5, 80, 30);
  BLUE_SCHEME.setText("Stop Serial Port2");
  BLUE_SCHEME.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  BLUE_SCHEME.addEventHandler(this, "StopSerialPort2_click1");
  BaudRate = new GDropList(window1.papplet, 515, 40, 165, 220, 10);
  BaudRate.setItems(loadStrings("list_868333"), 0);
  BaudRate.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  BaudRate.addEventHandler(this, "BaudRate_click1");
  Baudlabel1 = new GLabel(window1.papplet, 515, 5, 165, 30);
  Baudlabel1.setText("Baud Rate");
  Baudlabel1.setTextBold();
  Baudlabel1.setOpaque(false);
  Phrasetextfield1 = new GTextField(window1.papplet, 345, 40, 165, 22, G4P.SCROLLBARS_NONE);
  Phrasetextfield1.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  Phrasetextfield1.setOpaque(false);
  Phrasetextfield1.addEventHandler(this, "Phrasetextfield1_change1");
  Initiationlabel1 = new GLabel(window1.papplet, 345, 5, 120, 30);
  Initiationlabel1.setText("Start Phrase");
  Initiationlabel1.setTextBold();
  Initiationlabel1.setOpaque(false);
  OKPhrasebutton1 = new GButton(window1.papplet, 470, 5, 40, 30);
  OKPhrasebutton1.setText("OK");
  OKPhrasebutton1.setTextBold();
  OKPhrasebutton1.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  OKPhrasebutton1.addEventHandler(this, "OKPhrasebutton1_click2");
  window2 = new GWindow(this, "Controls", 20, 100, 285, 160, false, JAVA2D);
  window2.addDrawHandler(this, "win_draw2");
  ZoomIn = new GButton(window2.papplet, 5, 5, 80, 30);
  ZoomIn.setText("Zoom in");
  ZoomIn.setTextBold();
  ZoomIn.addEventHandler(this, "ZoomInbutton1_click1");
  ZoomOut = new GButton(window2.papplet, 5, 40, 80, 30);
  ZoomOut.setText("Zoom out");
  ZoomOut.setTextBold();
  ZoomOut.addEventHandler(this, "ZoomOutbutton2_click1");
  TimePlus = new GButton(window2.papplet, 90, 5, 80, 30);
  TimePlus.setText("Time +");
  TimePlus.setTextBold();
  TimePlus.addEventHandler(this, "TimePlusbutton3_click1");
  TimeMinus = new GButton(window2.papplet, 90, 40, 80, 30);
  TimeMinus.setText("Time -");
  TimeMinus.setTextBold();
  TimeMinus.addEventHandler(this, "TimeMinusbutton4_click1");
  RUN = new GButton(window2.papplet, 180, 5, 80, 30);
  RUN.setText("RUN");
  RUN.setTextBold();
  RUN.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  RUN.addEventHandler(this, "RUNbutton5_click1");
  STOP = new GButton(window2.papplet, 180, 40, 80, 30);
  STOP.setText("STOP");
  STOP.setTextBold();
  STOP.setLocalColorScheme(GCScheme.RED_SCHEME);
  STOP.addEventHandler(this, "STOPbutton6_click1");
  OffsetUp = new GButton(window2.papplet, 5, 75, 80, 30);
  OffsetUp.setText("Offset up");
  OffsetUp.setTextBold();
  OffsetUp.addEventHandler(this, "button1_click1");
  OffsetDown = new GButton(window2.papplet, 90, 75, 80, 30);
  OffsetDown.setText("Offset down");
  OffsetDown.setTextBold();
  OffsetDown.addEventHandler(this, "OffsetDownbutton1_click1");
  Timingslider1 = new GSlider(window2.papplet, 0, 145, 265, 15, 10.0);
  Timingslider1.setLimits(0.0, 0.0, 4000.0);
  Timingslider1.setNumberFormat(G4P.DECIMAL, 1);
  Timingslider1.setOpaque(false);
  Timingslider1.addEventHandler(this, "Timingslider1_change1");
  Offsetslider2 = new GSlider(window2.papplet, 280, 0, 160, 15, 10.0);
  Offsetslider2.setRotation(PI/2, GControlMode.CORNER);
  Offsetslider2.setLimits(0.0, -2000.0, 2000.0);
  Offsetslider2.setNumberFormat(G4P.DECIMAL, 2);
  Offsetslider2.setOpaque(false);
  Offsetslider2.addEventHandler(this, "Offsetslider2_change1");
  Settingsbutton1 = new GButton(window2.papplet, 180, 75, 80, 30);
  Settingsbutton1.setText("Settings");
  Settingsbutton1.setTextBold();
  Settingsbutton1.setLocalColorScheme(GCScheme.ORANGE_SCHEME);
  Settingsbutton1.addEventHandler(this, "Settingsbutton1_click2");
  EXITbutton1 = new GButton(window2.papplet, 180, 110, 80, 30);
  EXITbutton1.setText("EXIT");
  EXITbutton1.setTextBold();
  EXITbutton1.setLocalColorScheme(GCScheme.PURPLE_SCHEME);
  EXITbutton1.addEventHandler(this, "EXITbutton1_click2");
  ChoosePathbutton1 = new GButton(window2.papplet, 90, 110, 80, 30);
  ChoosePathbutton1.setText("Choose Path");
  ChoosePathbutton1.setTextBold();
  ChoosePathbutton1.setLocalColorScheme(GCScheme.GREEN_SCHEME);
  ChoosePathbutton1.addEventHandler(this, "ChoosePathbutton1_click2");
  AnalysisUPbutton1 = new GButton(window2.papplet, 5, 110, 37, 15);
  AnalysisUPbutton1.setText("↑");
  AnalysisUPbutton1.setTextBold();
  AnalysisUPbutton1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  AnalysisUPbutton1.addEventHandler(this, "AnalysisUP_click2");
  AnalysisDownbutton1 = new GButton(window2.papplet, 48, 110, 37, 15);
  AnalysisDownbutton1.setText("↓");
  AnalysisDownbutton1.setTextBold();
  AnalysisDownbutton1.setLocalColorScheme(GCScheme.CYAN_SCHEME);
  AnalysisDownbutton1.addEventHandler(this, "AnalysisDown_click2");
  Analysisslider1 = new GSlider(window2.papplet, 0, 128, 89, 15, 10.0);
  Analysisslider1.setLimits(0.0, 0.0, 100.0);
  Analysisslider1.setNumberFormat(G4P.DECIMAL, 0);
  Analysisslider1.setOpaque(false);
  Analysisslider1.addEventHandler(this, "Analysisslider1_change1");
}

// Variable declarations 
// autogenerated do not edit
GWindow window1;
GButton OpenSerialbutton; 
GDropList Serial_Ports; 
GButton StopSerial; 
GDropList Serial_Ports2; 
GButton OpenSerialPort2button1; 
GButton BLUE_SCHEME; 
GDropList BaudRate; 
GLabel Baudlabel1; 
GTextField Phrasetextfield1; 
GLabel Initiationlabel1; 
GButton OKPhrasebutton1; 
GWindow window2;
GButton ZoomIn; 
GButton ZoomOut; 
GButton TimePlus; 
GButton TimeMinus; 
GButton RUN; 
GButton STOP; 
GButton OffsetUp; 
GButton OffsetDown; 
GSlider Timingslider1; 
GSlider Offsetslider2; 
GButton Settingsbutton1; 
GButton EXITbutton1; 
GButton ChoosePathbutton1; 
GButton AnalysisUPbutton1; 
GButton AnalysisDownbutton1; 
GSlider Analysisslider1; 

