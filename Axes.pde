class Axes2D{
  //Global variables
  float Ylength, Xlength, YscaleFactor, XscaleFactor, Xposition, Yposition;

  int XtickNumber, YtickNumber, LineWidth;
    
  //Constructor
  Axes2D(float _Xposition, float _Yposition, int _XtickNumber, int _YtickNumber, int _LineWidth){
    background(255);
    Xposition = _Xposition;
    Yposition = _Yposition;
    Xlength = width - width/5;
    Ylength = height - height/4;
    XtickNumber = _XtickNumber;
    YtickNumber = _YtickNumber;
    LineWidth = _LineWidth;
  }  //timing, inByte1, Previoustiming, PreviousinByte1
  //Functions
  void run(){
    showLines();
    showTicks();
    showNumbers();
  }

  void showLines(){
   stroke(0);
   strokeWeight(LineWidth);
  //top x
   line(Xposition, Yposition, Xposition+Xlength, Yposition);
   // left Y
   line(Xposition, Yposition, Xposition, Yposition+Ylength);
   //bot x
   line(Xposition, Yposition+Ylength, Xposition+Xlength, Yposition+Ylength);
   //right Y
   line(Xposition+Xlength, Yposition, Xposition+Xlength, Yposition+Ylength);
  }

  void showTicks(){
    int XtickLength = int(Xlength) / (XtickNumber+1);
    int YtickLength = int(Ylength) / (YtickNumber+1);
   // Y
   stroke(0);
   strokeWeight(1);
   for(int i = 1; i < XtickNumber+1; i++){
   line(Xposition + XtickLength*i, Yposition+Ylength+5, Xposition + XtickLength*i, Yposition+Ylength-5);
   }
   for(int i = 1; i < YtickNumber+1; i++){
   line(Xposition+5, Yposition + YtickLength*i, Xposition-5, Yposition + YtickLength*i);
   }
  }
  void showNumbers(){
    String TheFormatOfString = "%.6f";
   float calculatedYTicks = Ylength/((YtickNumber+1)*scalingFactor);
   float calculatedXTicks = Xlength/((XtickNumber+1)*timingFactor);
   int XtickLength = int(Xlength) / (XtickNumber+1);
   int YtickLength = int(Ylength) / (YtickNumber+1);
   for(int i = 1; i < XtickNumber+1; i++){
   float NumbersX = calculatedXTicks * i + TimingOffsetSlider/timingFactor;
   textSize(10);
   fill(0, 0, 0);
   text(String.format("%.1f", NumbersX), Xposition + XtickLength*i - 10, Yposition+Ylength+20);
   }
   for(int i = 1; i < YtickNumber+1; i++){
   float NumbersY = calculatedYTicks * i + offset/scalingFactor + OffsetSliderVal/scalingFactor;
   
      if (NumbersY >= 1000000){
     TheFormatOfString = "%.0f"; }
   else if (NumbersY >= 100000 && NumbersY < 1000000){
     TheFormatOfString = "%.1f"; }
   else if (NumbersY >= 10000 && NumbersY < 100000){
     TheFormatOfString = "%.2f"; }
   else if (NumbersY >= 1000 && NumbersY < 10000){
     TheFormatOfString = "%.3f"; }
   else if (NumbersY >= 100 && NumbersY < 1000){
     TheFormatOfString = "%.4f"; }
   else if (NumbersY >= 10 && NumbersY < 100){
     TheFormatOfString = "%.5f"; }
   else {
     TheFormatOfString = "%.6f"; }  
   
   textSize(10);
   fill(0, 0, 0);
   text(String.format(TheFormatOfString, NumbersY), Xposition-70, Yposition + Ylength - YtickLength*i+5);
   }
  }

}
