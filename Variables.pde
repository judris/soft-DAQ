float Previoustiming, PreviousinByte1, timing, graphtiming = 0.0, AnalysisTiming = 0.0, inByte1, inByte2, scalingFactor = 40.0, timingFactor = 1.0, offset = 0.0, OffsetSliderVal = 0.0, TimingOffsetSlider = 0.0;
float pXposition, pYposition, Xposition, Yposition, XstartPos = 100.0, YstartPos = 20.0, SliderAnTime = 0.0, AnalysisTime = 10.0;
int index = 0, timingsubtract = 0, AnalysisButton = 0;
 
PrintWriter outputFile1;

String StartPass = "1234567890.123456789"; //"Analysis Start";

String inString1, inString2;

String fullPathName, DAQfileName, joinedDate = "No File Selected";

boolean redrawAxis = false, startflag = false, nodevice = true;

int BaudrateNumber;

int SerialPortNumber = 0; 
String[] SerialArray;

float[] timingValueArray = new float[1000000];
float[] measuredValueArray = new float[1000000];


void ArrayInit() {
  SerialArray = new String[20];
}

