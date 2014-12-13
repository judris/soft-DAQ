public void FindSerialPorts() {
  SerialArray = Serial.list();
if (SerialArray.length == 0){
 SerialArray = loadStrings("list_757299");
 nodevice = true;
}
 else if (SerialArray.length > 0){
   nodevice = false;
}
}

void serialPortSelect(){
     myPort = new Serial(this, Serial.list()[Serial_Ports.getSelectedIndex()], BaudrateNumber);
     myPort.bufferUntil('\n'); }
void serialPortSelect2(){
          myPort2 = new Serial(this, Serial.list()[Serial_Ports2.getSelectedIndex()], BaudrateNumber);
     myPort2.bufferUntil('\n'); }
    
     
void serialEvent (Serial myPort) {
 // get the ASCII string:
 inString1 = myPort.readStringUntil('\n');
  if (inString1 != null) {
 // trim off any whitespace:
 inString1 = trim(inString1);
 autostartfunction();
 inByte1 = float(inString1);
 timing = float(millis())/1000.0;
 graphtiming = timing - float(timingsubtract)/1000.0;
 collectData();
 calculateAnalysisTiming();
 showIndicator();
 calculateValues();
 myElectropherogram.run(pXposition, pYposition, Xposition, Yposition);
 preserveData(graphtiming, inByte1); //float xvalue, float yvalue
 timingfunction();
 AutoStop();
 }
}

void timingfunction(){
 Previoustiming = graphtiming;
 PreviousinByte1 = inByte1;
}

void autostartfunction(){
 if (inString1.equals(StartPass) == true){
  StopTheAnalysis();
  StartTheAnalysis();
 } 
}

void StopTheAnalysis(){
 if(startflag == true){
     startflag = false;
     closeDAQFile();
 } 
}

void AutoStop(){
AnalysisTime = 10.0 + AnalysisButton + SliderAnTime;
if (startflag == true && AnalysisTiming > AnalysisTime*60.0){
  StopTheAnalysis();
}   
}
