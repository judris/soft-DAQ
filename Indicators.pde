void showIndicator(){
String indicatorstring = "no data";
String timeValue = "0";
  indicatorstring = String.format("%.6f", inByte1);
//  timeValue = str(AnalysisTiming %.1f);
  timeValue = String.format("%.1f", AnalysisTiming);
  
if (startflag == false){
  strokeWeight(0);
  fill(255, 0, 0);
  ellipse(30, height-30, 40, 40);
  }
if (startflag == true){
  strokeWeight(0);
  fill(0, 255, 0);
  ellipse(30, height-30, 40, 40);
  }
  
fill(255);
rect(55, height-55, 100, 40);

textSize(12);
fill(0);
text(indicatorstring, 60, height-25);
text("Value", 60, height-40); 

fill(255);
rect(160, height-55, 100, 40);

textSize(12);
fill(0);
text(timeValue, 165, height-25);
text("Time (s)", 165, height-40); 

fill(255);
rect(265, height-55, 170, 40);

textSize(12);
fill(0);
text("File Name", 270, height-40);
text(joinedDate, 270, height-25);

fill(255);
rect(440, height-55, 170, 40);

textSize(12);
fill(0);
text("Analysis Time", 445, height-40);
text(String.format("%.1f", AnalysisTime) + " (min)", 445, height-25);
text(String.format("%.1f", AnalysisTime*60) + " (s)", 530, height-25);

fill(255);
rect(615, height-55, width - 615-5, 40);

textSize(12);
fill(0);
text("File Path", 620, height-40);
if(fullPathName != null){
text(fullPathName, 620, height-25); }
//text(String.format("%.1f", AnalysisTime*60) + " (s)", 530, height-25);
} 
void StartTheAnalysis(){
startflag = true;
makefilename();
createDAQFile();
AnalysisTiming = 0.0;
timingsubtract = millis();
index = 0;
float[] timingValueArray = new float[1000000];
float[] measuredValueArray = new float[1000000];
Previoustiming = 0.0;
initializeClasses();

}

