class Electropherogram{
  //Global variables
  float scaleFactor, Xstart, Ystart;
//  int ;
  //Constructor
  Electropherogram(float _Xstart, float _Ystart, float _scaleFactor){
    scaleFactor = _scaleFactor;
    Xstart = _Xstart;
    Ystart = _Ystart + height - height/4;
  }  
  void run(float _pXpos, float _pYpos, float _Xpos, float _Ypos){
    float pXpos, pYpos, Xpos, Ypos;
    pXpos = _pXpos;
    pYpos = _pYpos;
    Xpos = _Xpos;
    Ypos = _Ypos;
        if (pXpos >= Xstart && pXpos <= Xstart + width - width/5 && Xpos >= Xstart && Xpos <= Xstart + width - width/5
    && pYpos <= Ystart && pYpos >= Ystart - height + height/4 && Ypos <= Ystart && Ypos >= Ystart - height + height/4){
   strokeWeight(2);
   line(pXpos, pYpos, Xpos, Ypos);    
  }
  }
  void showPreserved(){
     for (int i = 1; i < index; i++){
float  pXshowposition = timingValueArray[i-1]*timingFactor - TimingOffsetSlider + Xstart;
float  pYshowposition = -measuredValueArray[i-1]*scaleFactor + Ystart + offset + OffsetSliderVal;
float  Xshowposition = timingValueArray[i]*timingFactor - TimingOffsetSlider + Xstart;
float  Yshowposition = -measuredValueArray[i]*scaleFactor + Ystart + offset + OffsetSliderVal;   
       if(pXshowposition >= Xstart && pYshowposition <= Xstart + width - width/5 && Xshowposition >= Xstart && Xshowposition <= Xstart + width - width/5
    && pYshowposition <= Ystart && pYshowposition >= Ystart - height + height/4 && Yshowposition <= Ystart && Yshowposition >= Ystart - height + height/4){
     strokeWeight(2);
     line(pXshowposition, pYshowposition, Xshowposition, Yshowposition);
//     println(timingValueArray[i] + " " + measuredValueArray[i]);
//println(pXshowposition + " " + pYshowposition + " " + Xshowposition + " " + Yshowposition);
}
}
}
}
  void preserveData(float _Xpos, float _Ypos){
    float Xpos, Ypos;
    Xpos = _Xpos;
    Ypos = _Ypos;
    timingValueArray[index] = Xpos;
    measuredValueArray[index] = Ypos;
//    println(timingValueArray[index] + " " + measuredValueArray[index]);
    index++;
  }
  
void calculateValues(){
  pXposition = Previoustiming*timingFactor - TimingOffsetSlider + XstartPos;
  pYposition = -PreviousinByte1*scalingFactor + YstartPos + height - height/4 + offset + OffsetSliderVal;
  Xposition = graphtiming*timingFactor - TimingOffsetSlider + XstartPos;
  Yposition = -inByte1*scalingFactor + YstartPos + height - height/4 + offset + OffsetSliderVal;
}
